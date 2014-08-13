.class public Lcom/android/contacts/model/EntityModifier;
.super Ljava/lang/Object;
.source "EntityModifier.java"


# static fields
.field private static final COLUMN_FOR_LABEL:Ljava/lang/String; = "data3"

.field private static final COLUMN_FOR_TYPE:Ljava/lang/String; = "data2"

.field private static final DEBUG:Z = false

.field private static final FREQUENCY_TOTAL:I = -0x80000000

.field private static final SIM_MAX_EMAIL_FIELD:I = 0x1

.field private static final SIM_MAX_PHONE_FIELD:I = 0x1

.field public static SIM_ONE:I = 0x0

.field public static SIM_ZERO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "EntityModifier"

.field private static final TYPE_CUSTOM:I

.field private static final sGenericMimeTypesWithTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 187
    sput v4, Lcom/android/contacts/model/EntityModifier;->SIM_ZERO:I

    .line 189
    sput v5, Lcom/android/contacts/model/EntityModifier;->SIM_ONE:I

    .line 2781
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/phone_v2"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/email_v2"

    aput-object v2, v1, v5

    const-string v2, "vnd.android.cursor.item/im"

    aput-object v2, v1, v6

    const-string v2, "vnd.android.cursor.item/nickname"

    aput-object v2, v1, v7

    const-string v2, "vnd.android.cursor.item/website"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "vnd.android.cursor.item/relation"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "vnd.android.cursor.item/sip_address"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/model/EntityModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    .line 2797
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v8, [Ljava/lang/String;

    const-string v2, "vnd.android.cursor.item/organization"

    aput-object v2, v1, v4

    const-string v2, "vnd.android.cursor.item/note"

    aput-object v2, v1, v5

    const-string v2, "vnd.android.cursor.item/photo"

    aput-object v2, v1, v6

    const-string v2, "vnd.android.cursor.item/group_membership"

    aput-object v2, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/contacts/model/EntityModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static adjustType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/DataKind;)Z
    .locals 8
    .param p0, "entry"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .param p2, "kind"    # Lcom/android/contacts/model/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;",
            "Lcom/android/contacts/model/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2315
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v5, v6

    .line 2359
    :goto_0
    return v5

    .line 2323
    :cond_1
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    .line 2325
    .local v4, "typeInteger":Ljava/lang/Integer;
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 2329
    .local v3, "type":I
    :goto_1
    invoke-static {v3, p1, p2}, Lcom/android/contacts/model/EntityModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2331
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    move v5, v6

    .line 2333
    goto :goto_0

    .line 2325
    .end local v3    # "type":I
    :cond_2
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/AccountType$EditType;

    iget v3, v5, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    goto :goto_1

    .line 2341
    .restart local v3    # "type":I
    :cond_3
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 2343
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 2345
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditType;

    .line 2347
    .local v0, "editType":Lcom/android/contacts/model/AccountType$EditType;
    iget v5, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-static {v5, p1, p2}, Lcom/android/contacts/model/EntityModifier;->isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/DataKind;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2349
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    iget v7, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {p0, v5, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;I)V

    move v5, v6

    .line 2351
    goto :goto_0

    .line 2343
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0    # "editType":Lcom/android/contacts/model/AccountType$EditType;
    :cond_5
    move v5, v7

    .line 2359
    goto :goto_0
.end method

.method protected static areEqual(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/model/DataKind;)Z
    .locals 6
    .param p0, "values1"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .param p1, "values2"    # Landroid/content/ContentValues;
    .param p2, "kind"    # Lcom/android/contacts/model/DataKind;

    .prologue
    const/4 v4, 0x0

    .line 1220
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-nez v5, :cond_0

    .line 1240
    :goto_0
    return v4

    .line 1224
    :cond_0
    iget-object v5, p2, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditField;

    .line 1226
    .local v0, "field":Lcom/android/contacts/model/AccountType$EditField;
    iget-object v5, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1228
    .local v2, "value1":Ljava/lang/String;
    iget-object v5, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p1, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1230
    .local v3, "value2":Ljava/lang/String;
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 1240
    .end local v0    # "field":Lcom/android/contacts/model/AccountType$EditField;
    .end local v2    # "value1":Ljava/lang/String;
    .end local v3    # "value2":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z
    .locals 7
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 207
    if-nez p1, :cond_0

    .line 217
    :goto_0
    return v4

    .line 209
    :cond_0
    iget-object v5, p1, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v5, v3}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    .line 211
    .local v2, "visibleCount":I
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->hasValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v1

    .line 213
    .local v1, "validTypes":Z
    iget v5, p1, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    iget v5, p1, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    if-ge v2, v5, :cond_2

    :cond_1
    move v0, v3

    .line 217
    .local v0, "validOverall":Z
    :goto_1
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :goto_2
    move v4, v3

    goto :goto_0

    .end local v0    # "validOverall":Z
    :cond_2
    move v0, v4

    .line 213
    goto :goto_1

    .restart local v0    # "validOverall":Z
    :cond_3
    move v3, v4

    .line 217
    goto :goto_2
.end method

.method private static ensureEntryMaxSize(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .param p0, "newState"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/DataKind;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3031
    .local p2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez p2, :cond_0

    .line 3033
    const/4 v3, 0x0

    .line 3061
    :goto_0
    return-object v3

    .line 3039
    :cond_0
    iget v2, p1, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 3041
    .local v2, "typeOverallMax":I
    iget-boolean v3, p1, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v3, :cond_1

    .line 3043
    const/4 v2, 0x1

    .line 3047
    :cond_1
    if-ltz v2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 3049
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3051
    .local v1, "newMimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_2

    .line 3053
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3051
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3057
    :cond_2
    move-object p2, v1

    .end local v0    # "i":I
    .end local v1    # "newMimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    :cond_3
    move-object v3, p2

    .line 3061
    goto :goto_0
.end method

.method public static ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 6
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "accountType"    # Lcom/android/contacts/model/AccountType;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 246
    invoke-virtual {p1, p2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v2

    .line 247
    .local v2, "kind":Lcom/android/contacts/model/DataKind;
    invoke-virtual {p0, p2, v3}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v5

    if-lez v5, :cond_0

    move v1, v3

    .line 249
    .local v1, "hasChild":Z
    :goto_0
    if-eqz v2, :cond_3

    .line 250
    if-eqz v1, :cond_1

    .line 252
    invoke-virtual {p0, p2}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 262
    :goto_1
    return-object v3

    .end local v1    # "hasChild":Z
    :cond_0
    move v1, v4

    .line 247
    goto :goto_0

    .line 255
    .restart local v1    # "hasChild":Z
    :cond_1
    invoke-static {p0, v2}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v0

    .line 256
    .local v0, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    iget-object v4, v2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    const-string v5, "vnd.android.cursor.item/photo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->setFromTemplate(Z)V

    :cond_2
    move-object v3, v0

    .line 259
    goto :goto_1

    .line 262
    .end local v0    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static ensureKindExistsSIMPhone(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "accountType"    # Lcom/android/contacts/model/AccountType;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 277
    invoke-virtual {p2, p3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v5

    .line 279
    .local v5, "kind":Lcom/android/contacts/model/DataKind;
    const/4 v8, 0x1

    invoke-virtual {p1, p3, v8}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v8

    if-lez v8, :cond_4

    const/4 v3, 0x1

    .line 281
    .local v3, "hasChild":Z
    :goto_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 283
    .local v0, "anrConfigValue":I
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v6

    .line 285
    .local v6, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    sget v7, Lcom/android/contacts/model/EntityModifier;->SIM_ONE:I

    .line 287
    .local v7, "slot2":I
    if-nez v3, :cond_5

    if-eqz v5, :cond_5

    .line 289
    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 291
    iget-object v8, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    const-string v9, "vnd.sec.contact.sim"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-lez v0, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 295
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v8

    if-nez v8, :cond_0

    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 297
    :cond_0
    const/4 v8, 0x3

    if-le v0, v8, :cond_3

    .line 299
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 301
    :cond_1
    const/4 v8, 0x2

    invoke-virtual {v6, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v8

    if-nez v8, :cond_2

    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 303
    :cond_2
    const/4 v8, 0x3

    invoke-virtual {v6, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isAnrFull(I)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 369
    :cond_3
    return-void

    .line 279
    .end local v0    # "anrConfigValue":I
    .end local v3    # "hasChild":Z
    .end local v6    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .end local v7    # "slot2":I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 327
    .restart local v0    # "anrConfigValue":I
    .restart local v3    # "hasChild":Z
    .restart local v6    # "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    .restart local v7    # "slot2":I
    :cond_5
    if-eqz v3, :cond_3

    if-eqz v5, :cond_3

    .line 329
    iget-object v8, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    const-string v9, "vnd.sec.contact.sim"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    if-lez v0, :cond_3

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "2"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 333
    iget-object v8, p2, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    const-string v9, "vnd.sec.contact.sim"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v6}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getAnrFieldCount()I

    move-result v1

    .line 336
    .local v1, "anrFieldCount":I
    :goto_1
    const/4 v8, 0x1

    invoke-virtual {p1, p3, v8}, Lcom/android/contacts/model/EntityDelta;->getMimeEntriesCount(Ljava/lang/String;Z)I

    move-result v2

    .line 338
    .local v2, "currentNumberCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    add-int/lit8 v8, v1, 0x1

    sub-int/2addr v8, v2

    if-ge v4, v8, :cond_3

    .line 340
    const-string v8, "EntityModifier"

    const-string v9, "ensureKindExists () : insertChild for edit"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    invoke-static {p1, v5}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 338
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 333
    .end local v1    # "anrFieldCount":I
    .end local v2    # "currentNumberCount":I
    .end local v4    # "i":I
    :cond_6
    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getAnrFieldCount(I)I

    move-result v1

    goto :goto_1
.end method

.method private static fixupLegacyImType(Landroid/os/Bundle;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 2473
    const-string v2, "im_protocol"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2475
    .local v0, "encodedString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2501
    :goto_0
    return-void

    .line 2481
    :cond_0
    :try_start_0
    invoke-static {v0}, Landroid/provider/Contacts$ContactMethods;->decodeImProtocol(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 2485
    .local v1, "protocol":Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 2487
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/Integer;

    .end local v1    # "protocol":Ljava/lang/Object;
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 2495
    :catch_0
    move-exception v2

    goto :goto_0

    .line 2491
    .restart local v1    # "protocol":Ljava/lang/Object;
    :cond_1
    const-string v2, "im_protocol"

    check-cast v1, Ljava/lang/String;

    .end local v1    # "protocol":Ljava/lang/Object;
    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public static getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;ZI)Lcom/android/contacts/model/AccountType$EditType;
    .locals 7
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p2, "includeSecondary"    # Z
    .param p3, "exactValue"    # I

    .prologue
    const/4 v3, 0x0

    .line 734
    if-nez p1, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-object v3

    .line 738
    :cond_1
    iget-object v6, p1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 744
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->getTypeFrequencies(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Landroid/util/SparseIntArray;

    move-result-object v4

    .line 746
    .local v4, "typeCount":Landroid/util/SparseIntArray;
    invoke-static {p0, p1, v3, p2, v4}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v5

    .line 750
    .local v5, "validTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountType$EditType;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_0

    .line 756
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/AccountType$EditType;

    .line 762
    .local v2, "lastType":Lcom/android/contacts/model/AccountType$EditType;
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 764
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/contacts/model/AccountType$EditType;>;"
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 766
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditType;

    .line 768
    .local v3, "type":Lcom/android/contacts/model/AccountType$EditType;
    iget v6, v3, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 772
    .local v0, "count":I
    iget v6, v3, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-eq p3, v6, :cond_0

    .line 782
    if-lez v0, :cond_2

    .line 786
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 796
    .end local v0    # "count":I
    .end local v3    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_4

    .line 798
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/AccountType$EditType;

    move-object v3, v6

    goto :goto_0

    :cond_4
    move-object v3, v2

    .line 802
    goto :goto_0
.end method

.method public static getCurrentType(Landroid/content/ContentValues;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 3
    .param p0, "entry"    # Landroid/content/ContentValues;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;

    .prologue
    const/4 v1, 0x0

    .line 630
    iget-object v2, p1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-object v1

    .line 632
    :cond_1
    iget-object v2, p1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 634
    .local v0, "rawValue":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 636
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/contacts/model/EntityModifier;->getType(Lcom/android/contacts/model/DataKind;I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    goto :goto_0
.end method

.method public static getCurrentType(Landroid/database/Cursor;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 4
    .param p0, "cursor"    # Landroid/database/Cursor;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;

    .prologue
    const/4 v2, 0x0

    .line 652
    iget-object v3, p1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 660
    :cond_0
    :goto_0
    return-object v2

    .line 654
    :cond_1
    iget-object v3, p1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 656
    .local v0, "index":I
    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    .line 658
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 660
    .local v1, "rawValue":I
    invoke-static {p1, v1}, Lcom/android/contacts/model/EntityModifier;->getType(Lcom/android/contacts/model/DataKind;I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCurrentType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .param p0, "entry"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;

    .prologue
    .line 610
    iget-object v1, p1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 612
    .local v0, "rawValue":Ljava/lang/Long;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    .line 614
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/contacts/model/EntityModifier;->getType(Lcom/android/contacts/model/DataKind;I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    goto :goto_0
.end method

.method private static getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I
    .locals 5
    .param p1, "typeColumn"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;",
            "Ljava/lang/String;",
            "I)I"
        }
    .end annotation

    .prologue
    .line 2433
    .local p0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v0, 0x0

    .line 2437
    .local v0, "count":I
    if-eqz p0, :cond_1

    .line 2439
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 2441
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 2443
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    invoke-virtual {v4, p1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    .line 2445
    .local v3, "typeInteger":Ljava/lang/Integer;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 2447
    add-int/lit8 v0, v0, 0x1

    .line 2441
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2455
    .end local v1    # "i":I
    .end local v2    # "size":I
    .end local v3    # "typeInteger":Ljava/lang/Integer;
    :cond_1
    return v0
.end method

.method public static getType(Lcom/android/contacts/model/DataKind;I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 3
    .param p0, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p1, "rawValue"    # I

    .prologue
    .line 674
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountType$EditType;

    .line 676
    .local v1, "type":Lcom/android/contacts/model/AccountType$EditType;
    iget v2, v1, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    .line 684
    .end local v1    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getTypeFrequencies(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Landroid/util/SparseIntArray;
    .locals 9
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;

    .prologue
    .line 530
    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    .line 536
    .local v6, "typeCount":Landroid/util/SparseIntArray;
    iget-object v7, p1, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 538
    .local v3, "mimeEntries":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-nez v3, :cond_0

    .line 568
    :goto_0
    return-object v6

    .line 542
    :cond_0
    const/4 v4, 0x0

    .line 544
    .local v4, "totalCount":I
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 548
    .local v1, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 550
    add-int/lit8 v4, v4, 0x1

    .line 554
    invoke-static {v1, p1}, Lcom/android/contacts/model/EntityModifier;->getCurrentType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v5

    .line 556
    .local v5, "type":Lcom/android/contacts/model/AccountType$EditType;
    if-eqz v5, :cond_1

    .line 558
    iget v7, v5, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {v6, v7}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 560
    .local v0, "count":I
    iget v7, v5, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 566
    .end local v0    # "count":I
    .end local v1    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v5    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_2
    const/high16 v7, -0x80000000

    invoke-virtual {v6, v7, v4}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_0
.end method

.method public static getTypePrecedence(Lcom/android/contacts/model/DataKind;I)I
    .locals 3
    .param p0, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p1, "rawValue"    # I

    .prologue
    .line 700
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 702
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/AccountType$EditType;

    .line 704
    .local v1, "type":Lcom/android/contacts/model/AccountType$EditType;
    iget v2, v1, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v2, p1, :cond_0

    .line 712
    .end local v0    # "i":I
    .end local v1    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :goto_1
    return v0

    .line 700
    .restart local v0    # "i":I
    .restart local v1    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 712
    .end local v1    # "type":Lcom/android/contacts/model/AccountType$EditType;
    :cond_1
    const v0, 0x7fffffff

    goto :goto_1
.end method

.method public static getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/DataKind;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 385
    const/4 v0, 0x1

    invoke-static {p0, p1, v1, v0, v1}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Ljava/util/ArrayList;
    .locals 2
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p2, "forceInclude"    # Lcom/android/contacts/model/AccountType$EditType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/DataKind;",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;ZLandroid/util/SparseIntArray;)Ljava/util/ArrayList;
    .locals 10
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p2, "forceInclude"    # Lcom/android/contacts/model/AccountType$EditType;
    .param p3, "includeSecondary"    # Z
    .param p4, "typeCount"    # Landroid/util/SparseIntArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/DataKind;",
            "Lcom/android/contacts/model/AccountType$EditType;",
            "Z",
            "Landroid/util/SparseIntArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/AccountType$EditType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 451
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v7, "validTypes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/AccountType$EditType;>;"
    invoke-static {p1}, Lcom/android/contacts/model/EntityModifier;->hasEditTypes(Lcom/android/contacts/model/DataKind;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 506
    :cond_0
    return-object v7

    .line 461
    :cond_1
    if-nez p4, :cond_2

    .line 465
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->getTypeFrequencies(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Landroid/util/SparseIntArray;

    move-result-object p4

    .line 473
    :cond_2
    const/high16 v8, -0x80000000

    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    .line 475
    .local v2, "overallCount":I
    iget-object v8, p1, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditType;

    .line 482
    .local v3, "type":Lcom/android/contacts/model/AccountType$EditType;
    iget v8, p1, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_5

    const/4 v4, 0x1

    .line 486
    .local v4, "validOverall":Z
    :goto_1
    iget v8, v3, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_7

    const/4 v6, 0x1

    .line 490
    .local v6, "validSpecific":Z
    :goto_2
    if-eqz p3, :cond_9

    const/4 v5, 0x1

    .line 492
    .local v5, "validSecondary":Z
    :goto_3
    invoke-virtual {v3, p2}, Lcom/android/contacts/model/AccountType$EditType;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 494
    .local v0, "forcedInclude":Z
    if-nez v0, :cond_4

    if-eqz v4, :cond_3

    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 498
    :cond_4
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 482
    .end local v0    # "forcedInclude":Z
    .end local v4    # "validOverall":Z
    .end local v5    # "validSecondary":Z
    .end local v6    # "validSpecific":Z
    :cond_5
    iget v8, p1, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    if-gt v2, v8, :cond_6

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    const/4 v4, 0x0

    goto :goto_1

    .line 486
    .restart local v4    # "validOverall":Z
    :cond_7
    iget v8, v3, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-virtual {p4, v8}, Landroid/util/SparseIntArray;->get(I)I

    move-result v8

    iget v9, v3, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    if-ge v8, v9, :cond_8

    const/4 v6, 0x1

    goto :goto_2

    :cond_8
    const/4 v6, 0x0

    goto :goto_2

    .line 490
    .restart local v6    # "validSpecific":Z
    :cond_9
    iget-boolean v8, v3, Lcom/android/contacts/model/AccountType$EditType;->secondary:Z

    if-nez v8, :cond_a

    const/4 v5, 0x1

    goto :goto_3

    :cond_a
    const/4 v5, 0x0

    goto :goto_3
.end method

.method private static hasChanges(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)Z
    .locals 10
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "accountType"    # Lcom/android/contacts/model/AccountType;

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1088
    invoke-virtual {p1}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/DataKind;

    .line 1090
    .local v5, "kind":Lcom/android/contacts/model/DataKind;
    iget-object v6, v5, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 1092
    .local v6, "mimeType":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1094
    .local v0, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v0, :cond_0

    .line 1098
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1104
    .local v1, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-static {v1, v5}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v9

    if-nez v9, :cond_3

    move v4, v7

    .line 1106
    .local v4, "isRealInsert":Z
    :goto_0
    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v9

    if-nez v9, :cond_2

    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1116
    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v1    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "isRealInsert":Z
    .end local v5    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_1
    return v7

    .restart local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .restart local v1    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v5    # "kind":Lcom/android/contacts/model/DataKind;
    .restart local v6    # "mimeType":Ljava/lang/String;
    :cond_3
    move v4, v8

    .line 1104
    goto :goto_0

    .end local v0    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v1    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v6    # "mimeType":Ljava/lang/String;
    :cond_4
    move v7, v8

    .line 1116
    goto :goto_1
.end method

.method public static hasChanges(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z
    .locals 8
    .param p0, "set"    # Lcom/android/contacts/model/EntityDeltaList;
    .param p1, "accountTypes"    # Lcom/android/contacts/model/AccountTypeManager;

    .prologue
    const/4 v6, 0x1

    .line 928
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->isMarkedForSplitting()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->isMarkedForJoining()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 954
    :cond_0
    :goto_0
    return v6

    .line 936
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    .line 938
    .local v3, "state":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 940
    .local v5, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v7, "account_type"

    invoke-virtual {v5, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    .local v0, "accountType":Ljava/lang/String;
    const-string v7, "data_set"

    invoke-virtual {v5, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, "dataSet":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v4

    .line 946
    .local v4, "type":Lcom/android/contacts/model/AccountType;
    invoke-static {v3, v4}, Lcom/android/contacts/model/EntityModifier;->hasChanges(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 954
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v3    # "state":Lcom/android/contacts/model/EntityDelta;
    .end local v4    # "type":Lcom/android/contacts/model/AccountType;
    .end local v5    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private static hasChangesOver2Items(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)Z
    .locals 12
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "accountType"    # Lcom/android/contacts/model/AccountType;

    .prologue
    .line 1124
    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p0, v11}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1125
    .local v10, "phoneEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const-string v11, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p0, v11}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 1126
    .local v0, "emailEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p0, v11}, Lcom/android/contacts/model/EntityDelta;->hasPrimaryNumber(Ljava/lang/String;)Z

    move-result v5

    .line 1127
    .local v5, "hasPrimaryNumber":Z
    const-string v11, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p0, v11}, Lcom/android/contacts/model/EntityDelta;->hasPrimaryNumber(Ljava/lang/String;)Z

    move-result v4

    .line 1129
    .local v4, "hasPrimaryEmail":Z
    if-nez v10, :cond_0

    const/4 v11, 0x0

    .line 1177
    :goto_0
    return v11

    .line 1131
    :cond_0
    const/4 v9, 0x0

    .line 1133
    .local v9, "isRealInsert":Z
    const/4 v8, 0x0

    .line 1134
    .local v8, "insertedPhoneCount":I
    const/4 v3, 0x0

    .line 1135
    .local v3, "existedPhoneCount":I
    const/4 v7, 0x0

    .line 1136
    .local v7, "insertedEmailCount":I
    const/4 v2, 0x0

    .line 1138
    .local v2, "existedEmailCount":I
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1145
    .local v1, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v11, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {p1, v11}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 1146
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1147
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1148
    :cond_2
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v11

    if-nez v11, :cond_1

    .line 1149
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1154
    .end local v1    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    if-nez v5, :cond_5

    const/4 v11, 0x2

    if-ge v8, v11, :cond_4

    const/4 v11, 0x1

    if-ne v8, v11, :cond_5

    if-eqz v3, :cond_5

    .line 1155
    :cond_4
    const/4 v11, 0x1

    goto :goto_0

    .line 1157
    :cond_5
    if-nez v0, :cond_6

    const/4 v11, 0x0

    goto :goto_0

    .line 1159
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1165
    .restart local v1    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v11, "vnd.android.cursor.item/email_v2"

    invoke-virtual {p1, v11}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v11

    invoke-static {v1, v11}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v11

    if-nez v11, :cond_7

    .line 1166
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1167
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1168
    :cond_8
    invoke-virtual {v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v11

    if-nez v11, :cond_7

    .line 1169
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1174
    .end local v1    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_9
    if-nez v5, :cond_b

    const/4 v11, 0x2

    if-ge v7, v11, :cond_a

    const/4 v11, 0x1

    if-ne v7, v11, :cond_b

    if-eqz v2, :cond_b

    .line 1175
    :cond_a
    const/4 v11, 0x1

    goto :goto_0

    .line 1177
    :cond_b
    const/4 v11, 0x0

    goto :goto_0
.end method

.method public static hasChangesOver2Items(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)Z
    .locals 8
    .param p0, "set"    # Lcom/android/contacts/model/EntityDeltaList;
    .param p1, "accountTypes"    # Lcom/android/contacts/model/AccountTypeManager;

    .prologue
    const/4 v6, 0x1

    .line 960
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->isMarkedForSplitting()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDeltaList;->isMarkedForJoining()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 984
    :cond_0
    :goto_0
    return v6

    .line 966
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    .line 968
    .local v3, "state":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 970
    .local v5, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v7, "account_type"

    invoke-virtual {v5, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 972
    .local v0, "accountType":Ljava/lang/String;
    const-string v7, "data_set"

    invoke-virtual {v5, v7}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 974
    .local v1, "dataSet":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v4

    .line 976
    .local v4, "type":Lcom/android/contacts/model/AccountType;
    invoke-static {v3, v4}, Lcom/android/contacts/model/EntityModifier;->hasChangesOver2Items(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0

    .line 984
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v3    # "state":Lcom/android/contacts/model/EntityDelta;
    .end local v4    # "type":Lcom/android/contacts/model/AccountType;
    .end local v5    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_3
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static hasEditTypes(Lcom/android/contacts/model/DataKind;)Z
    .locals 2
    .param p0, "kind"    # Lcom/android/contacts/model/DataKind;

    .prologue
    const/4 v0, 0x0

    .line 586
    if-nez p0, :cond_1

    .line 592
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static hasValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z
    .locals 2
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;

    .prologue
    const/4 v0, 0x1

    .line 225
    invoke-static {p1}, Lcom/android/contacts/model/EntityModifier;->hasEditTypes(Lcom/android/contacts/model/DataKind;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 227
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->getValidTypes(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 227
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 3
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;

    .prologue
    const/high16 v2, -0x80000000

    .line 824
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/model/EntityModifier;->getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;ZI)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    .line 826
    .local v0, "bestType":Lcom/android/contacts/model/AccountType$EditType;
    if-nez v0, :cond_0

    .line 830
    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v2}, Lcom/android/contacts/model/EntityModifier;->getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;ZI)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v0

    .line 834
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    return-object v1
.end method

.method public static insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 4
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p2, "type"    # Lcom/android/contacts/model/AccountType$EditType;

    .prologue
    .line 852
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 888
    :goto_0
    return-object v1

    .line 854
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 860
    .local v0, "after":Landroid/content/ContentValues;
    const-string v2, "mimetype"

    iget-object v3, p1, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    iget-object v2, p1, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    if-eqz v2, :cond_1

    .line 868
    iget-object v2, p1, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->putAll(Landroid/content/ContentValues;)V

    .line 874
    :cond_1
    iget-object v2, p1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    if-eqz v2, :cond_2

    if-eqz p2, :cond_2

    .line 878
    iget-object v2, p1, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    iget v3, p2, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 884
    :cond_2
    invoke-static {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 886
    .local v1, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {p0, v1}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method public static isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Z
    .locals 7
    .param p0, "values"    # Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1191
    if-nez p1, :cond_1

    .line 1208
    :cond_0
    :goto_0
    return v3

    .line 1194
    :cond_1
    const-string v5, "vnd.android.cursor.item/photo"

    iget-object v6, p1, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1195
    invoke-virtual {p0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "data15"

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 1198
    :cond_3
    iget-object v5, p1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v5, :cond_0

    .line 1201
    iget-object v5, p1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditField;

    .line 1203
    .local v0, "field":Lcom/android/contacts/model/AccountType$EditField;
    iget-object v5, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1204
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 1205
    goto :goto_0
.end method

.method private static isTypeAllowed(ILjava/util/ArrayList;Lcom/android/contacts/model/DataKind;)Z
    .locals 7
    .param p0, "type"    # I
    .param p2, "kind"    # Lcom/android/contacts/model/DataKind;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/model/EntityDelta$ValuesDelta;",
            ">;",
            "Lcom/android/contacts/model/DataKind;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2377
    const/4 v2, 0x0

    .line 2379
    .local v2, "max":I
    iget-object v6, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    .line 2381
    .local v3, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 2383
    iget-object v6, p2, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/AccountType$EditType;

    .line 2385
    .local v0, "editType":Lcom/android/contacts/model/AccountType$EditType;
    iget v6, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    if-ne v6, p0, :cond_2

    .line 2387
    iget v2, v0, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    .line 2397
    .end local v0    # "editType":Lcom/android/contacts/model/AccountType$EditType;
    :cond_0
    if-nez v2, :cond_3

    move v4, v5

    .line 2417
    :cond_1
    :goto_1
    return v4

    .line 2381
    .restart local v0    # "editType":Lcom/android/contacts/model/AccountType$EditType;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2407
    .end local v0    # "editType":Lcom/android/contacts/model/AccountType$EditType;
    :cond_3
    const/4 v6, -0x1

    if-eq v2, v6, :cond_1

    .line 2417
    iget-object v6, p2, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    invoke-static {p1, v6, p0}, Lcom/android/contacts/model/EntityModifier;->getEntryCountByType(Ljava/util/ArrayList;Ljava/lang/String;I)I

    move-result v6

    if-lt v6, v2, :cond_1

    move v4, v5

    goto :goto_1
.end method

.method public static migrateEvent(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Ljava/lang/Integer;)V
    .locals 21
    .param p0, "oldState"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "newState"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/model/DataKind;
    .param p3, "defaultYear"    # Ljava/lang/Integer;

    .prologue
    .line 3501
    const-string v3, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v15

    .line 3505
    .local v15, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3601
    :cond_0
    return-void

    .line 3513
    :cond_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 3515
    .local v9, "allowedTypes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/contacts/model/AccountType$EventEditType;>;"
    move-object/from16 v0, p2

    iget-object v3, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/AccountType$EditType;

    .line 3517
    .local v12, "editType":Lcom/android/contacts/model/AccountType$EditType;
    iget v3, v12, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v12, Lcom/android/contacts/model/AccountType$EventEditType;

    .end local v12    # "editType":Lcom/android/contacts/model/AccountType$EditType;
    invoke-interface {v9, v3, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3521
    :cond_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 3523
    .local v13, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v13}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v19

    .line 3525
    .local v19, "values":Landroid/content/ContentValues;
    if-eqz v19, :cond_3

    .line 3531
    const-string v3, "data1"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3533
    .local v11, "dateString":Ljava/lang/String;
    const-string v3, "data2"

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    .line 3535
    .local v18, "type":Ljava/lang/Integer;
    if-eqz v18, :cond_3

    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3537
    move-object/from16 v0, v18

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/model/AccountType$EventEditType;

    .line 3541
    .local v17, "suitableType":Lcom/android/contacts/model/AccountType$EventEditType;
    new-instance v16, Ljava/text/ParsePosition;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct {v0, v3}, Ljava/text/ParsePosition;-><init>(I)V

    .line 3543
    .local v16, "position":Ljava/text/ParsePosition;
    const/16 v20, 0x0

    .line 3545
    .local v20, "yearOptional":Z
    sget-object v3, Lcom/android/contacts/util/DateUtils;->DATE_AND_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v16

    invoke-virtual {v3, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 3547
    .local v10, "date":Ljava/util/Date;
    if-nez v10, :cond_4

    .line 3549
    const/16 v20, 0x1

    .line 3551
    sget-object v3, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    move-object/from16 v0, v16

    invoke-virtual {v3, v11, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v10

    .line 3555
    :cond_4
    if-eqz v10, :cond_6

    .line 3557
    if-eqz v20, :cond_6

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/model/AccountType$EventEditType;->isYearOptional()Z

    move-result v3

    if-nez v3, :cond_6

    .line 3561
    sget-object v3, Lcom/android/contacts/util/DateUtils;->UTC_TIMEZONE:Ljava/util/TimeZone;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v3, v6}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 3565
    .local v2, "calendar":Ljava/util/Calendar;
    if-nez p3, :cond_5

    .line 3567
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 3571
    :cond_5
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 3573
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 3575
    .local v4, "month":I
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 3579
    .local v5, "day":I
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {}, Lcom/android/contacts/editor/EventFieldEditorView;->getDefaultHourForBirthday()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Ljava/util/Calendar;->set(IIIIII)V

    .line 3583
    const-string v3, "data1"

    sget-object v6, Lcom/android/contacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v0, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3591
    .end local v2    # "calendar":Ljava/util/Calendar;
    .end local v4    # "month":I
    .end local v5    # "day":I
    :cond_6
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto/16 :goto_1
.end method

.method public static migrateGenericWithTypeColumn(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Z)V
    .locals 23
    .param p0, "oldState"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "newState"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/model/DataKind;
    .param p3, "isSIMAccount"    # Z

    .prologue
    .line 3645
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 3647
    .local v11, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 3867
    :cond_0
    return-void

    .line 3691
    :cond_1
    const/4 v6, 0x0

    .line 3693
    .local v6, "defaultType":Ljava/lang/Integer;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 3695
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v20, v0

    const-string v21, "data2"

    invoke-virtual/range {v20 .. v21}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 3699
    :cond_2
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3703
    .local v3, "allowedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 3705
    .local v18, "typeSpecificMaxMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_3

    .line 3707
    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3709
    const/16 v20, -0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3721
    :cond_3
    const-string v20, "vnd.android.cursor.item/im"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_5

    .line 3725
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/AccountType$EditType;

    .line 3727
    .local v7, "editType":Lcom/android/contacts/model/AccountType$EditType;
    iget v0, v7, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3729
    iget v0, v7, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    iget v0, v7, Lcom/android/contacts/model/AccountType$EditType;->specificMax:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3733
    .end local v7    # "editType":Lcom/android/contacts/model/AccountType$EditType;
    :cond_4
    if-nez v6, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v20, v0

    if-eqz v20, :cond_5

    .line 3735
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/contacts/model/AccountType$EditType;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    move/from16 v20, v0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 3743
    .end local v10    # "i$":Ljava/util/Iterator;
    :cond_5
    if-nez v6, :cond_6

    .line 3745
    const-string v20, "EntityModifier"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Default type isn\'t available for mimetype "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 3751
    :cond_6
    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/contacts/model/DataKind;->isList:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    move/from16 v17, v0

    .line 3757
    .local v17, "typeOverallMax":I
    :goto_1
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 3759
    .local v5, "currentEntryCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v15, 0x0

    .line 3763
    .local v15, "totalCount":I
    const/4 v13, 0x0

    .line 3765
    .local v13, "phoneTypeCount":I
    const/4 v8, 0x0

    .line 3767
    .local v8, "emailTypeCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "i$":Ljava/util/Iterator;
    :cond_7
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 3769
    .local v9, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz p3, :cond_8

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ge v13, v0, :cond_7

    .line 3771
    :cond_8
    if-eqz p3, :cond_9

    const/16 v20, 0x1

    move/from16 v0, v20

    if-ge v8, v0, :cond_7

    .line 3775
    :cond_9
    const/16 v20, -0x1

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_a

    move/from16 v0, v17

    if-ge v15, v0, :cond_0

    .line 3783
    :cond_a
    invoke-virtual {v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v19

    .line 3785
    .local v19, "values":Landroid/content/ContentValues;
    if-eqz v19, :cond_7

    .line 3793
    const-string v20, "data2"

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    .line 3797
    .local v12, "oldType":Ljava/lang/Integer;
    invoke-interface {v3, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 3801
    if-eqz v6, :cond_f

    .line 3803
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 3805
    .local v16, "typeForNewAccount":Ljava/lang/Integer;
    const-string v20, "data2"

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3807
    if-eqz v12, :cond_b

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v20

    if-nez v20, :cond_b

    .line 3809
    const-string v20, "data3"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3827
    :cond_b
    :goto_3
    if-eqz v16, :cond_c

    .line 3829
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_11

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 3833
    .local v14, "specificMax":I
    :goto_4
    if-ltz v14, :cond_c

    .line 3835
    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    if-eqz v20, :cond_12

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 3839
    .local v4, "currentCount":I
    :goto_5
    if-ge v4, v14, :cond_7

    .line 3845
    add-int/lit8 v20, v4, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3851
    .end local v4    # "currentCount":I
    .end local v14    # "specificMax":I
    :cond_c
    invoke-static/range {v19 .. v19}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v20

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 3853
    add-int/lit8 v15, v15, 0x1

    .line 3857
    const-string v20, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 3859
    add-int/lit8 v13, v13, 0x1

    .line 3861
    :cond_d
    const-string v20, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 3863
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 3751
    .end local v5    # "currentEntryCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v8    # "emailTypeCount":I
    .end local v9    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v12    # "oldType":Ljava/lang/Integer;
    .end local v13    # "phoneTypeCount":I
    .end local v15    # "totalCount":I
    .end local v16    # "typeForNewAccount":Ljava/lang/Integer;
    .end local v17    # "typeOverallMax":I
    .end local v19    # "values":Landroid/content/ContentValues;
    :cond_e
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 3815
    .restart local v5    # "currentEntryCount":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v8    # "emailTypeCount":I
    .restart local v9    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v12    # "oldType":Ljava/lang/Integer;
    .restart local v13    # "phoneTypeCount":I
    .restart local v15    # "totalCount":I
    .restart local v17    # "typeOverallMax":I
    .restart local v19    # "values":Landroid/content/ContentValues;
    :cond_f
    const/16 v16, 0x0

    .line 3817
    .restart local v16    # "typeForNewAccount":Ljava/lang/Integer;
    const-string v20, "data2"

    invoke-virtual/range {v19 .. v20}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 3823
    .end local v16    # "typeForNewAccount":Ljava/lang/Integer;
    :cond_10
    move-object/from16 v16, v12

    .restart local v16    # "typeForNewAccount":Ljava/lang/Integer;
    goto :goto_3

    .line 3829
    :cond_11
    const/4 v14, 0x0

    goto :goto_4

    .line 3835
    .restart local v14    # "specificMax":I
    :cond_12
    const/4 v4, 0x0

    goto :goto_5
.end method

.method public static migrateGenericWithoutTypeColumn(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)V
    .locals 5
    .param p0, "oldState"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "newState"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/model/DataKind;

    .prologue
    .line 3611
    iget-object v4, p2, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {p1, p2, v4}, Lcom/android/contacts/model/EntityModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 3615
    .local v2, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 3635
    :cond_0
    return-void

    .line 3623
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 3625
    .local v0, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v3

    .line 3627
    .local v3, "values":Landroid/content/ContentValues;
    if-eqz v3, :cond_2

    .line 3629
    invoke-static {v3}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_0
.end method

.method public static migratePostal(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)V
    .locals 25
    .param p0, "oldState"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "newState"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "newDataKind"    # Lcom/android/contacts/model/DataKind;

    .prologue
    .line 3279
    const-string v23, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureEntryMaxSize(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v15

    .line 3283
    .local v15, "mimeEntries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v23

    if-eqz v23, :cond_1

    .line 3491
    :cond_0
    return-void

    .line 3291
    :cond_1
    const/16 v18, 0x0

    .line 3293
    .local v18, "supportFormattedAddress":Z
    const/16 v19, 0x0

    .line 3295
    .local v19, "supportStreet":Z
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/AccountType$EditField;

    move-object/from16 v0, v23

    iget-object v10, v0, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    .line 3297
    .local v10, "firstColumn":Ljava/lang/String;
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/AccountType$EditField;

    .line 3299
    .local v6, "editField":Lcom/android/contacts/model/AccountType$EditField;
    const-string v23, "data1"

    iget-object v0, v6, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 3301
    const/16 v18, 0x1

    .line 3305
    :cond_3
    const-string v23, "data4"

    iget-object v0, v6, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 3307
    const/16 v19, 0x1

    goto :goto_0

    .line 3315
    .end local v6    # "editField":Lcom/android/contacts/model/AccountType$EditField;
    :cond_4
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 3317
    .local v20, "supportedTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_5

    .line 3319
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/AccountType$EditType;

    .line 3321
    .local v7, "editType":Lcom/android/contacts/model/AccountType$EditType;
    iget v0, v7, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3329
    .end local v7    # "editType":Lcom/android/contacts/model/AccountType$EditType;
    :cond_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .end local v12    # "i$":Ljava/util/Iterator;
    :cond_6
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 3331
    .local v9, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v22

    .line 3333
    .local v22, "values":Landroid/content/ContentValues;
    if-eqz v22, :cond_6

    .line 3339
    const-string v23, "data2"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v16

    .line 3341
    .local v16, "oldType":Ljava/lang/Integer;
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_8

    .line 3343
    const/4 v5, 0x1

    .line 3345
    .local v5, "defaultType":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v23, v0

    if-eqz v23, :cond_a

    .line 3347
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    move-object/from16 v23, v0

    const-string v24, "data2"

    invoke-virtual/range {v23 .. v24}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3355
    :cond_7
    :goto_3
    const-string v23, "data2"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3357
    if-eqz v16, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v23

    if-nez v23, :cond_8

    .line 3359
    const-string v23, "data3"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3367
    .end local v5    # "defaultType":I
    :cond_8
    const-string v23, "data1"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 3369
    .local v11, "formattedAddress":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_c

    .line 3371
    if-nez v18, :cond_9

    .line 3375
    const-string v23, "data1"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3385
    if-eqz v19, :cond_b

    .line 3387
    const-string v23, "data4"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3487
    :cond_9
    :goto_4
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v23

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_2

    .line 3349
    .end local v11    # "formattedAddress":Ljava/lang/String;
    .restart local v5    # "defaultType":I
    :cond_a
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_7

    .line 3351
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/contacts/model/AccountType$EditType;

    move-object/from16 v0, v23

    iget v5, v0, Lcom/android/contacts/model/AccountType$EditType;->rawValue:I

    goto :goto_3

    .line 3391
    .end local v5    # "defaultType":I
    .restart local v11    # "formattedAddress":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 3399
    :cond_c
    if-eqz v18, :cond_9

    .line 3409
    sget-object v23, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual/range {v23 .. v23}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v23

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    .line 3413
    .local v21, "useJapaneseOrder":Z
    if-eqz v21, :cond_e

    .line 3415
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v23, 0x0

    const-string v24, "data10"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x1

    const-string v24, "data9"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x2

    const-string v24, "data8"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x3

    const-string v24, "data7"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x4

    const-string v24, "data6"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x5

    const-string v24, "data4"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x6

    const-string v24, "data5"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    .line 3451
    .local v17, "structuredData":[Ljava/lang/String;
    :goto_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3453
    .local v4, "builder":Ljava/lang/StringBuilder;
    move-object/from16 v3, v17

    .local v3, "arr$":[Ljava/lang/String;
    array-length v14, v3

    .local v14, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_6
    if-ge v13, v14, :cond_f

    aget-object v8, v3, v13

    .line 3455
    .local v8, "elem":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_d

    .line 3457
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\n"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3453
    :cond_d
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 3433
    .end local v3    # "arr$":[Ljava/lang/String;
    .end local v4    # "builder":Ljava/lang/StringBuilder;
    .end local v8    # "elem":Ljava/lang/String;
    .end local v13    # "i$":I
    .end local v14    # "len$":I
    .end local v17    # "structuredData":[Ljava/lang/String;
    :cond_e
    const/16 v23, 0x7

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v23, 0x0

    const-string v24, "data5"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x1

    const-string v24, "data4"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x2

    const-string v24, "data6"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x3

    const-string v24, "data7"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x4

    const-string v24, "data8"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x5

    const-string v24, "data9"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    const/16 v23, 0x6

    const-string v24, "data10"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    aput-object v24, v17, v23

    .restart local v17    # "structuredData":[Ljava/lang/String;
    goto/16 :goto_5

    .line 3463
    .restart local v3    # "arr$":[Ljava/lang/String;
    .restart local v4    # "builder":Ljava/lang/StringBuilder;
    .restart local v13    # "i$":I
    .restart local v14    # "len$":I
    :cond_f
    const-string v23, "data1"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3467
    const-string v23, "data5"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3469
    const-string v23, "data4"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3471
    const-string v23, "data6"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3473
    const-string v23, "data7"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3475
    const-string v23, "data8"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3477
    const-string v23, "data9"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3479
    const-string v23, "data10"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public static migrateStateForNewContact(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/AccountType;)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldState"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "newState"    # Lcom/android/contacts/model/EntityDelta;
    .param p3, "oldAccountType"    # Lcom/android/contacts/model/AccountType;
    .param p4, "newAccountType"    # Lcom/android/contacts/model/AccountType;

    .prologue
    .line 2847
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v15

    .line 2851
    .local v15, "simManager":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const/4 v9, 0x0

    .line 2853
    .local v9, "isEmailFull":Z
    const/4 v11, 0x0

    .line 2855
    .local v11, "isSIMAccount":Z
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v17

    if-nez v17, :cond_2

    .line 2871
    invoke-virtual {v15}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v9

    .line 2873
    const-string v17, "vnd.sec.contact.sim"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 2879
    :cond_0
    :goto_0
    const/4 v8, 0x0

    .line 2883
    .local v8, "isEmail2Full":Z
    const/4 v10, 0x0

    .line 2897
    .local v10, "isSIM2Account":Z
    move-object/from16 v0, p4

    move-object/from16 v1, p3

    if-ne v0, v1, :cond_6

    .line 2903
    invoke-virtual/range {p4 .. p4}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/DataKind;

    .line 2905
    .local v12, "kind":Lcom/android/contacts/model/DataKind;
    iget-object v13, v12, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 2909
    .local v13, "mimeType":Ljava/lang/String;
    const-string v17, "vnd.android.cursor.item/name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 2911
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v12}, Lcom/android/contacts/model/EntityModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)V

    goto :goto_1

    .line 2857
    .end local v8    # "isEmail2Full":Z
    .end local v10    # "isSIM2Account":Z
    .end local v12    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v13    # "mimeType":Ljava/lang/String;
    :cond_2
    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(Ljava/lang/String;)Z

    move-result v9

    .line 2859
    const-string v17, "vnd.sec.contact.sim"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_3

    const-string v17, "vnd.sec.contact.sim2"

    move-object/from16 v0, p4

    iget-object v0, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 2863
    :cond_3
    const/4 v11, 0x1

    goto :goto_0

    .line 2915
    .restart local v8    # "isEmail2Full":Z
    .restart local v10    # "isSIM2Account":Z
    .restart local v12    # "kind":Lcom/android/contacts/model/DataKind;
    .restart local v13    # "mimeType":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2917
    .local v5, "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    .line 2919
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2921
    .local v4, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v16

    .line 2923
    .local v16, "values":Landroid/content/ContentValues;
    if-eqz v16, :cond_5

    .line 2925
    invoke-static/range {v16 .. v16}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v17

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto :goto_2

    .line 2943
    .end local v4    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v5    # "entryList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v13    # "mimeType":Ljava/lang/String;
    .end local v16    # "values":Landroid/content/ContentValues;
    :cond_6
    const/4 v14, 0x0

    .line 2945
    .local v14, "numberCount":I
    const/4 v3, 0x0

    .line 2949
    .local v3, "emailCount":I
    invoke-virtual/range {p4 .. p4}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/DataKind;

    .line 2951
    .restart local v12    # "kind":Lcom/android/contacts/model/DataKind;
    iget-boolean v0, v12, Lcom/android/contacts/model/DataKind;->editable:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 2953
    iget-object v13, v12, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 2955
    .restart local v13    # "mimeType":Ljava/lang/String;
    if-eqz v11, :cond_8

    if-eqz v9, :cond_8

    const-string v17, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 2965
    :cond_8
    const-string v17, "#displayName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    const-string v17, "#phoneticName"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 2973
    const-string v17, "vnd.android.cursor.item/name"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 2975
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2, v12}, Lcom/android/contacts/model/EntityModifier;->migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)V

    goto :goto_3

    .line 2977
    :cond_9
    const-string v17, "vnd.android.cursor.item/postal-address_v2"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 2979
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/android/contacts/model/EntityModifier;->migratePostal(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)V

    goto :goto_3

    .line 2981
    :cond_a
    const-string v17, "vnd.android.cursor.item/contact_event"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 2983
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    invoke-static {v0, v1, v12, v2}, Lcom/android/contacts/model/EntityModifier;->migrateEvent(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Ljava/lang/Integer;)V

    goto :goto_3

    .line 2985
    :cond_b
    sget-object v17, Lcom/android/contacts/model/EntityModifier;->sGenericMimeTypesWithoutTypeSupport:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 2987
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12}, Lcom/android/contacts/model/EntityModifier;->migrateGenericWithoutTypeColumn(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)V

    goto/16 :goto_3

    .line 2989
    :cond_c
    sget-object v17, Lcom/android/contacts/model/EntityModifier;->sGenericMimeTypesWithTypeSupport:Ljava/util/Set;

    move-object/from16 v0, v17

    invoke-interface {v0, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_f

    .line 2991
    if-nez v11, :cond_d

    if-eqz v10, :cond_e

    :cond_d
    const/16 v17, 0x1

    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, v17

    invoke-static {v0, v1, v12, v2}, Lcom/android/contacts/model/EntityModifier;->migrateGenericWithTypeColumn(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Z)V

    goto/16 :goto_3

    :cond_e
    const/16 v17, 0x0

    goto :goto_4

    .line 2993
    :cond_f
    const-string v17, "vnd.android.cursor.item/ringtone"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    .line 2995
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12, v11}, Lcom/android/contacts/model/EntityModifier;->migrateGenericWithTypeColumn(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Z)V

    goto/16 :goto_3

    .line 2997
    :cond_10
    const-string v17, "vnd.android.cursor.item/alerttone"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_11

    .line 2999
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12, v11}, Lcom/android/contacts/model/EntityModifier;->migrateGenericWithTypeColumn(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Z)V

    goto/16 :goto_3

    .line 3001
    :cond_11
    const-string v17, "vnd.android.cursor.item/vibration"

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_12

    .line 3003
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-static {v0, v1, v12, v11}, Lcom/android/contacts/model/EntityModifier;->migrateGenericWithTypeColumn(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Z)V

    goto/16 :goto_3

    .line 3007
    :cond_12
    new-instance v17, Ljava/lang/IllegalStateException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Unexpected editable mime-type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 3015
    .end local v3    # "emailCount":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v12    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v13    # "mimeType":Ljava/lang/String;
    .end local v14    # "numberCount":I
    :cond_13
    return-void
.end method

.method public static migrateStructuredName(Landroid/content/Context;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)V
    .locals 19
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oldState"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "newState"    # Lcom/android/contacts/model/EntityDelta;
    .param p3, "newDataKind"    # Lcom/android/contacts/model/DataKind;

    .prologue
    .line 3073
    const-string v15, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    invoke-virtual {v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v14

    .line 3077
    .local v14, "values":Landroid/content/ContentValues;
    if-nez v14, :cond_0

    .line 3269
    :goto_0
    return-void

    .line 3085
    :cond_0
    const/4 v8, 0x0

    .line 3087
    .local v8, "supportDisplayName":Z
    const/4 v10, 0x0

    .line 3089
    .local v10, "supportPhoneticFullName":Z
    const/4 v9, 0x0

    .line 3091
    .local v9, "supportPhoneticFamilyName":Z
    const/4 v12, 0x0

    .line 3093
    .local v12, "supportPhoneticMiddleName":Z
    const/4 v11, 0x0

    .line 3095
    .local v11, "supportPhoneticGivenName":Z
    move-object/from16 v0, p3

    iget-object v15, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountType$EditField;

    .line 3097
    .local v3, "editField":Lcom/android/contacts/model/AccountType$EditField;
    const-string v15, "data1"

    iget-object v0, v3, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 3099
    const/4 v8, 0x1

    .line 3103
    :cond_2
    const-string v15, "#phoneticName"

    iget-object v0, v3, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 3105
    const/4 v10, 0x1

    .line 3109
    :cond_3
    const-string v15, "data9"

    iget-object v0, v3, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 3111
    const/4 v9, 0x1

    .line 3115
    :cond_4
    const-string v15, "data8"

    iget-object v0, v3, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 3117
    const/4 v12, 0x1

    .line 3121
    :cond_5
    const-string v15, "data7"

    iget-object v0, v3, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 3123
    const/4 v11, 0x1

    goto :goto_1

    .line 3133
    .end local v3    # "editField":Lcom/android/contacts/model/AccountType$EditField;
    :cond_6
    const-string v15, "data1"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3135
    .local v2, "displayName":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_9

    .line 3137
    if-nez v8, :cond_7

    .line 3141
    move-object/from16 v0, p0

    invoke-static {v0, v2, v14}, Lcom/android/contacts/util/NameConverter;->displayNameToStructuredName(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    .line 3147
    const-string v15, "data1"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3175
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_7
    const-string v15, "#phoneticName"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3177
    .local v7, "phoneticFullName":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_d

    .line 3179
    if-nez v10, :cond_8

    .line 3183
    const/4 v15, 0x0

    invoke-static {v7, v15}, Lcom/android/contacts/editor/PhoneticNameEditorView;->parsePhoneticName(Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v13

    .line 3187
    .local v13, "tmpValues":Landroid/content/ContentValues;
    const-string v15, "#phoneticName"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3189
    if-eqz v9, :cond_a

    .line 3191
    const-string v15, "data9"

    const-string v16, "data9"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3201
    :goto_2
    if-eqz v12, :cond_b

    .line 3203
    const-string v15, "data8"

    const-string v16, "data8"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3213
    :goto_3
    if-eqz v11, :cond_c

    .line 3215
    const-string v15, "data7"

    const-string v16, "data7"

    move-object/from16 v0, v16

    invoke-virtual {v13, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3267
    .end local v13    # "tmpValues":Landroid/content/ContentValues;
    :cond_8
    :goto_4
    invoke-static {v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto/16 :goto_0

    .line 3153
    .end local v7    # "phoneticFullName":Ljava/lang/String;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_9
    if-eqz v8, :cond_7

    .line 3157
    const-string v15, "data1"

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/contacts/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3161
    sget-object v1, Lcom/android/contacts/util/NameConverter;->STRUCTURED_NAME_FIELDS:[Ljava/lang/String;

    .local v1, "arr$":[Ljava/lang/String;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_5
    if-ge v5, v6, :cond_7

    aget-object v4, v1, v5

    .line 3163
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {v14, v4}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3161
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 3197
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v4    # "field":Ljava/lang/String;
    .end local v5    # "i$":I
    .end local v6    # "len$":I
    .restart local v7    # "phoneticFullName":Ljava/lang/String;
    .restart local v13    # "tmpValues":Landroid/content/ContentValues;
    :cond_a
    const-string v15, "data9"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_2

    .line 3209
    :cond_b
    const-string v15, "data8"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_3

    .line 3221
    :cond_c
    const-string v15, "data7"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_4

    .line 3229
    .end local v13    # "tmpValues":Landroid/content/ContentValues;
    :cond_d
    if-eqz v10, :cond_e

    .line 3233
    const-string v15, "#phoneticName"

    const-string v16, "data9"

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    const-string v17, "data8"

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const-string v18, "data7"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v16 .. v18}, Lcom/android/contacts/editor/PhoneticNameEditorView;->buildPhoneticName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3245
    :cond_e
    if-nez v9, :cond_f

    .line 3247
    const-string v15, "data9"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3251
    :cond_f
    if-nez v12, :cond_10

    .line 3253
    const-string v15, "data8"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    .line 3257
    :cond_10
    if-nez v11, :cond_8

    .line 3259
    const-string v15, "data7"

    invoke-virtual {v14, v15}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public static parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .locals 9
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "typeExtra"    # Ljava/lang/String;
    .param p4, "valueExtra"    # Ljava/lang/String;
    .param p5, "valueColumn"    # Ljava/lang/String;

    .prologue
    .line 2529
    invoke-virtual {p2, p4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2535
    .local v7, "value":Ljava/lang/CharSequence;
    if-nez p1, :cond_1

    const/4 v1, 0x0

    .line 2583
    :cond_0
    :goto_0
    return-object v1

    .line 2541
    :cond_1
    invoke-static {p0, p1}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v0

    .line 2543
    .local v0, "canInsert":Z
    if-eqz v7, :cond_3

    invoke-static {v7}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v6, 0x1

    .line 2545
    .local v6, "validValue":Z
    :goto_1
    if-eqz v6, :cond_2

    if-nez v0, :cond_4

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 2543
    .end local v6    # "validValue":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 2551
    .restart local v6    # "validValue":Z
    :cond_4
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v4

    .line 2553
    .local v4, "hasType":Z
    if-eqz v4, :cond_6

    const/4 v8, 0x0

    :goto_2
    invoke-virtual {p2, p3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 2558
    .local v5, "typeValue":I
    const/4 v8, 0x1

    invoke-static {p0, p1, v8, v5}, Lcom/android/contacts/model/EntityModifier;->getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;ZI)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v3

    .line 2563
    .local v3, "editType":Lcom/android/contacts/model/AccountType$EditType;
    invoke-static {p0, p1, v3}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v1

    .line 2565
    .local v1, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-eqz v1, :cond_5

    .line 2566
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, p5, v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2571
    :cond_5
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    iget-object v8, v3, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 2575
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2577
    .local v2, "customType":Ljava/lang/String;
    iget-object v8, v3, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v1, v8, v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2553
    .end local v1    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v2    # "customType":Ljava/lang/String;
    .end local v3    # "editType":Lcom/android/contacts/model/AccountType$EditType;
    .end local v5    # "typeValue":I
    :cond_6
    const/high16 v8, -0x80000000

    goto :goto_2
.end method

.method public static parseExtras(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 18
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Lcom/android/contacts/model/AccountType;
    .param p2, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1258
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1410
    :cond_0
    :goto_0
    return-void

    .line 1268
    :cond_1
    invoke-static/range {p0 .. p3}, Lcom/android/contacts/model/EntityModifier;->parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    .line 1270
    invoke-static/range {p1 .. p3}, Lcom/android/contacts/model/EntityModifier;->parseStructuredPostalExtra(Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V

    .line 1278
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1280
    .local v4, "kind":Lcom/android/contacts/model/DataKind;
    const-string v6, "phone_type"

    const-string v7, "phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1282
    const-string v6, "secondary_phone_type"

    const-string v7, "secondary_phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1286
    const-string v6, "tertiary_phone_type"

    const-string v7, "tertiary_phone"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1298
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1300
    const-string v6, "email_type"

    const-string v7, "email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1302
    const-string v6, "secondary_email_type"

    const-string v7, "secondary_email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1306
    const-string v6, "tertiary_email_type"

    const-string v7, "tertiary_email"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1318
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1320
    invoke-static/range {p3 .. p3}, Lcom/android/contacts/model/EntityModifier;->fixupLegacyImType(Landroid/os/Bundle;)V

    .line 1322
    const-string v6, "im_protocol"

    const-string v7, "im_handle"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1332
    const-string v3, "vnd.android.cursor.item/sip_address"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1334
    const-string v6, "data1"

    const-string v7, "sip"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1342
    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    const/4 v12, 0x1

    .line 1346
    .local v12, "hasOrg":Z
    :goto_1
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v14

    .line 1348
    .local v14, "kindOrg":Lcom/android/contacts/model/DataKind;
    if-eqz v12, :cond_4

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1350
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    .line 1354
    .local v9, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1356
    .local v10, "company":Ljava/lang/String;
    if-eqz v9, :cond_3

    invoke-static {v10}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1358
    const-string v3, "data1"

    invoke-virtual {v9, v3, v10}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1364
    :cond_3
    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1366
    .local v16, "title":Ljava/lang/String;
    if-eqz v9, :cond_4

    invoke-static/range {v16 .. v16}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1368
    const-string v3, "data4"

    move-object/from16 v0, v16

    invoke-virtual {v9, v3, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1378
    .end local v9    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v10    # "company":Ljava/lang/String;
    .end local v16    # "title":Ljava/lang/String;
    :cond_4
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    .line 1380
    .local v11, "hasNotes":Z
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v13

    .line 1382
    .local v13, "kindNotes":Lcom/android/contacts/model/DataKind;
    if-eqz v11, :cond_5

    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1384
    move-object/from16 v0, p2

    invoke-static {v0, v13}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    .line 1388
    .restart local v9    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1390
    .local v15, "notes":Ljava/lang/String;
    if-eqz v9, :cond_5

    invoke-static {v15}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1392
    const-string v3, "data1"

    invoke-virtual {v9, v3, v15}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1402
    .end local v9    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v15    # "notes":Ljava/lang/String;
    :cond_5
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1404
    .local v17, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v17, :cond_0

    .line 1406
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->parseValues(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1342
    .end local v11    # "hasNotes":Z
    .end local v12    # "hasOrg":Z
    .end local v13    # "kindNotes":Lcom/android/contacts/model/DataKind;
    .end local v14    # "kindOrg":Lcom/android/contacts/model/DataKind;
    .end local v17    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_6
    const/4 v12, 0x0

    goto/16 :goto_1
.end method

.method public static parseExtrasForQRcode(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;IIII)V
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Lcom/android/contacts/model/AccountType;
    .param p2, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "Mnumber"    # I
    .param p5, "FAXnumber"    # I
    .param p6, "TELFIXnumber"    # I
    .param p7, "EMnumber"    # I

    .prologue
    .line 1669
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1901
    :cond_0
    :goto_0
    return-void

    .line 1683
    :cond_1
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v3}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1685
    const-string v3, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    .line 1689
    .local v9, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v3, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1693
    .local v16, "name":Ljava/lang/String;
    if-eqz v9, :cond_2

    invoke-static/range {v16 .. v16}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1695
    const-string v3, "data1"

    move-object/from16 v0, v16

    invoke-virtual {v9, v3, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1707
    :cond_2
    const/4 v3, 0x1

    move/from16 v0, p4

    if-le v0, v3, :cond_3

    .line 1709
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1711
    .local v4, "kind":Lcom/android/contacts/model/DataKind;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_1
    move/from16 v0, p4

    if-ge v13, v0, :cond_4

    .line 1713
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone_type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1711
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1719
    .end local v4    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v13    # "i":I
    :cond_3
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_4

    .line 1721
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1723
    .restart local v4    # "kind":Lcom/android/contacts/model/DataKind;
    const-string v6, "phone_type0"

    const-string v7, "phone0"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1737
    .end local v4    # "kind":Lcom/android/contacts/model/DataKind;
    :cond_4
    const/4 v3, 0x1

    move/from16 v0, p5

    if-le v0, v3, :cond_5

    .line 1739
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1741
    .restart local v4    # "kind":Lcom/android/contacts/model/DataKind;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_2
    move/from16 v0, p5

    if-ge v13, v0, :cond_6

    .line 1743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secondary_phone_type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "secondary_phone"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1741
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 1749
    .end local v4    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v13    # "i":I
    :cond_5
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_6

    .line 1751
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1753
    .restart local v4    # "kind":Lcom/android/contacts/model/DataKind;
    const-string v6, "secondary_phone_type0"

    const-string v7, "secondary_phone0"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1765
    .end local v4    # "kind":Lcom/android/contacts/model/DataKind;
    :cond_6
    const/4 v3, 0x1

    move/from16 v0, p6

    if-le v0, v3, :cond_7

    .line 1767
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1769
    .restart local v4    # "kind":Lcom/android/contacts/model/DataKind;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_3
    move/from16 v0, p6

    if-ge v13, v0, :cond_8

    .line 1771
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tertiary_phone_type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tertiary_phone"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1769
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 1777
    .end local v4    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v13    # "i":I
    :cond_7
    const/4 v3, 0x1

    move/from16 v0, p6

    if-ne v0, v3, :cond_8

    .line 1779
    const-string v3, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1781
    .restart local v4    # "kind":Lcom/android/contacts/model/DataKind;
    const-string v6, "tertiary_phone_type0"

    const-string v7, "tertiary_phone0"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1793
    .end local v4    # "kind":Lcom/android/contacts/model/DataKind;
    :cond_8
    const/4 v3, 0x1

    move/from16 v0, p7

    if-le v0, v3, :cond_9

    .line 1795
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1797
    .restart local v4    # "kind":Lcom/android/contacts/model/DataKind;
    const/4 v13, 0x0

    .restart local v13    # "i":I
    :goto_4
    move/from16 v0, p7

    if-ge v13, v0, :cond_a

    .line 1799
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "email_type"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "email"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1797
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1805
    .end local v4    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v13    # "i":I
    :cond_9
    const/4 v3, 0x1

    move/from16 v0, p7

    if-ne v0, v3, :cond_a

    .line 1807
    const-string v3, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1809
    .restart local v4    # "kind":Lcom/android/contacts/model/DataKind;
    const-string v6, "email_type0"

    const-string v7, "email0"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1821
    .end local v4    # "kind":Lcom/android/contacts/model/DataKind;
    :cond_a
    const-string v3, "vnd.android.cursor.item/im"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 1823
    .restart local v4    # "kind":Lcom/android/contacts/model/DataKind;
    invoke-static/range {p3 .. p3}, Lcom/android/contacts/model/EntityModifier;->fixupLegacyImType(Landroid/os/Bundle;)V

    .line 1825
    const-string v6, "im_protocol"

    const-string v7, "im_handle"

    const-string v8, "data1"

    move-object/from16 v3, p2

    move-object/from16 v5, p3

    invoke-static/range {v3 .. v8}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1833
    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_b
    const/4 v12, 0x1

    .line 1837
    .local v12, "hasOrg":Z
    :goto_5
    const-string v3, "vnd.android.cursor.item/organization"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v15

    .line 1839
    .local v15, "kindOrg":Lcom/android/contacts/model/DataKind;
    if-eqz v12, :cond_d

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1841
    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    .line 1845
    const-string v3, "company"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1847
    .local v10, "company":Ljava/lang/String;
    if-eqz v9, :cond_c

    invoke-static {v10}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1849
    const-string v3, "data1"

    invoke-virtual {v9, v3, v10}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1855
    :cond_c
    const-string v3, "job_title"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1857
    .local v18, "title":Ljava/lang/String;
    if-eqz v9, :cond_d

    invoke-static/range {v18 .. v18}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1859
    const-string v3, "data4"

    move-object/from16 v0, v18

    invoke-virtual {v9, v3, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1869
    .end local v10    # "company":Ljava/lang/String;
    .end local v18    # "title":Ljava/lang/String;
    :cond_d
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v11

    .line 1871
    .local v11, "hasNotes":Z
    const-string v3, "vnd.android.cursor.item/note"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v14

    .line 1873
    .local v14, "kindNotes":Lcom/android/contacts/model/DataKind;
    if-eqz v11, :cond_e

    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1875
    move-object/from16 v0, p2

    invoke-static {v0, v14}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v9

    .line 1879
    const-string v3, "notes"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1881
    .local v17, "notes":Ljava/lang/String;
    if-eqz v9, :cond_e

    invoke-static/range {v17 .. v17}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1883
    const-string v3, "data1"

    move-object/from16 v0, v17

    invoke-virtual {v9, v3, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1893
    .end local v17    # "notes":Ljava/lang/String;
    :cond_e
    const-string v3, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v19

    .line 1895
    .local v19, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    if-eqz v19, :cond_0

    .line 1897
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->parseValues(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1833
    .end local v11    # "hasNotes":Z
    .end local v12    # "hasOrg":Z
    .end local v14    # "kindNotes":Lcom/android/contacts/model/DataKind;
    .end local v15    # "kindOrg":Lcom/android/contacts/model/DataKind;
    .end local v19    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_f
    const/4 v12, 0x0

    goto/16 :goto_5
.end method

.method public static parseExtrasForSIM(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 27
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Lcom/android/contacts/model/AccountType;
    .param p2, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1919
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2027
    :cond_0
    :goto_0
    return-void

    .line 1927
    :cond_1
    const/16 v25, 0x0

    .line 1929
    .local v25, "overPhoneMaxLength":Z
    const/16 v24, 0x0

    .line 1935
    .local v24, "overEmailMaxLength":Z
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1937
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v20

    .line 1941
    .local v20, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1942
    .local v23, "name":Ljava/lang/String;
    const-string v2, "cnam"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v21

    .line 1943
    .local v21, "isCNAM":Z
    const-string v2, "data3"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1947
    .local v22, "lastName":Ljava/lang/String;
    if-eqz v20, :cond_2

    invoke-static/range {v23 .. v23}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1948
    if-eqz v21, :cond_3

    invoke-static/range {v22 .. v22}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1949
    const-string v2, "data2"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1950
    const-string v2, "data3"

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1951
    const-string v2, "data1"

    invoke-virtual/range {v20 .. v20}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/contacts/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    :cond_2
    :goto_1
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v26

    .line 1963
    .local v26, "simManager":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1997
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull()Z

    move-result v18

    .line 2003
    .local v18, "isEmailFull":Z
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength()I

    move-result v10

    .line 2005
    .local v10, "numMaxLength":I
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 2007
    .local v3, "kind":Lcom/android/contacts/model/DataKind;
    const-string v5, "phone_type"

    const-string v6, "phone"

    const-string v7, "data1"

    const-string v8, "vnd.android.cursor.item/phone_v2"

    const/4 v9, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v10}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v25

    .line 2017
    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength()I

    move-result v19

    .line 2019
    .local v19, "emailMaxLength":I
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 2021
    const-string v14, "email_type"

    const-string v15, "email"

    const-string v16, "data1"

    const-string v17, "vnd.android.cursor.item/email_v2"

    move-object/from16 v11, p2

    move-object v12, v3

    move-object/from16 v13, p3

    invoke-static/range {v11 .. v19}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v24

    goto/16 :goto_0

    .line 1953
    .end local v3    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v10    # "numMaxLength":I
    .end local v18    # "isEmailFull":Z
    .end local v19    # "emailMaxLength":I
    .end local v26    # "simManager":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_3
    const-string v2, "data1"

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1965
    .restart local v26    # "simManager":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    :cond_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(Ljava/lang/String;)Z

    move-result v18

    .line 1971
    .restart local v18    # "isEmailFull":Z
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(Ljava/lang/String;)I

    move-result v10

    .line 1973
    .restart local v10    # "numMaxLength":I
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1975
    .restart local v3    # "kind":Lcom/android/contacts/model/DataKind;
    const-string v5, "phone_type"

    const-string v6, "phone"

    const-string v7, "data1"

    const-string v8, "vnd.android.cursor.item/phone_v2"

    const/4 v9, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v10}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v25

    .line 1985
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength(Ljava/lang/String;)I

    move-result v19

    .line 1987
    .restart local v19    # "emailMaxLength":I
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 1989
    const-string v14, "email_type"

    const-string v15, "email"

    const-string v16, "data1"

    const-string v17, "vnd.android.cursor.item/email_v2"

    move-object/from16 v11, p2

    move-object v12, v3

    move-object/from16 v13, p3

    invoke-static/range {v11 .. v19}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v24

    .line 1993
    goto/16 :goto_0
.end method

.method public static parseExtrasForSIM(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z
    .locals 16
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "typeExtra"    # Ljava/lang/String;
    .param p4, "valueExtra"    # Ljava/lang/String;
    .param p5, "valueColumn"    # Ljava/lang/String;
    .param p6, "mimeType"    # Ljava/lang/String;
    .param p7, "isEmailFull"    # Z
    .param p8, "maxLength"    # I

    .prologue
    .line 2619
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 2621
    .local v13, "value":Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .line 2627
    .local v9, "overMaxLength":Z
    if-nez p1, :cond_0

    const/4 v14, 0x0

    .line 2765
    :goto_0
    return v14

    .line 2633
    :cond_0
    invoke-static/range {p0 .. p1}, Lcom/android/contacts/model/EntityModifier;->canInsert(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v2

    .line 2635
    .local v2, "canInsert":Z
    if-eqz v13, :cond_2

    invoke-static {v13}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_2

    const/4 v12, 0x1

    .line 2637
    .local v12, "validValue":Z
    :goto_1
    if-eqz v12, :cond_1

    if-nez v2, :cond_3

    :cond_1
    const/4 v14, 0x0

    goto :goto_0

    .line 2635
    .end local v12    # "validValue":Z
    :cond_2
    const/4 v12, 0x0

    goto :goto_1

    .line 2643
    .restart local v12    # "validValue":Z
    :cond_3
    invoke-virtual/range {p2 .. p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    .line 2645
    .local v7, "hasType":Z
    if-eqz v7, :cond_4

    const/4 v14, 0x0

    :goto_2
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 2651
    .local v11, "typeValue":I
    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v14, v11}, Lcom/android/contacts/model/EntityModifier;->getBestValidType(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;ZI)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v6

    .line 2657
    .local v6, "editType":Lcom/android/contacts/model/AccountType$EditType;
    const/4 v3, 0x0

    .line 2659
    .local v3, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    move-object v8, v13

    .line 2661
    .local v8, "insertValue":Ljava/lang/CharSequence;
    const-string v14, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p6

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 2663
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 2665
    const/4 v14, 0x1

    move/from16 v0, p7

    if-ne v0, v14, :cond_5

    if-nez v3, :cond_5

    .line 2667
    const/4 v14, 0x0

    goto :goto_0

    .line 2645
    .end local v3    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6    # "editType":Lcom/android/contacts/model/AccountType$EditType;
    .end local v8    # "insertValue":Ljava/lang/CharSequence;
    .end local v11    # "typeValue":I
    :cond_4
    const/high16 v14, -0x80000000

    goto :goto_2

    .line 2671
    .restart local v3    # "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v6    # "editType":Lcom/android/contacts/model/AccountType$EditType;
    .restart local v8    # "insertValue":Ljava/lang/CharSequence;
    .restart local v11    # "typeValue":I
    :cond_5
    if-nez p7, :cond_6

    if-nez v3, :cond_6

    .line 2673
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 2717
    :cond_6
    :goto_3
    if-eqz v8, :cond_e

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-lez v14, :cond_e

    if-lez p8, :cond_e

    .line 2719
    const-string v14, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p6

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 2721
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "+"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_c

    add-int/lit8 v10, p8, 0x1

    .line 2723
    .local v10, "tempMaxLength":I
    :goto_4
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v14

    if-le v14, v10, :cond_7

    .line 2725
    const/4 v9, 0x1

    .line 2727
    const/4 v14, 0x0

    invoke-interface {v8, v14, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2749
    .end local v10    # "tempMaxLength":I
    :cond_7
    :goto_5
    if-eqz v3, :cond_8

    .line 2751
    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p5

    invoke-virtual {v3, v0, v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2753
    if-eqz v6, :cond_8

    iget-object v14, v6, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    if-eqz v14, :cond_8

    .line 2757
    invoke-virtual/range {p2 .. p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2759
    .local v4, "customType":Ljava/lang/String;
    iget-object v14, v6, Lcom/android/contacts/model/AccountType$EditType;->customColumn:Ljava/lang/String;

    invoke-virtual {v3, v14, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "customType":Ljava/lang/String;
    :cond_8
    move v14, v9

    .line 2765
    goto/16 :goto_0

    .line 2677
    :cond_9
    const-string v14, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p6

    invoke-virtual {v0, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 2681
    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2683
    .local v5, "dialString":Ljava/lang/String;
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_a

    .line 2685
    const/4 v14, 0x0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    .line 2687
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 2689
    if-nez v3, :cond_6

    .line 2691
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    goto :goto_3

    .line 2697
    :cond_a
    const/4 v8, 0x0

    goto/16 :goto_3

    .line 2703
    .end local v5    # "dialString":Ljava/lang/String;
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    .line 2705
    if-nez v3, :cond_6

    .line 2707
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/android/contacts/model/EntityModifier;->insertChild(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Lcom/android/contacts/model/AccountType$EditType;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v3

    goto/16 :goto_3

    :cond_c
    move/from16 v10, p8

    .line 2721
    goto :goto_4

    .line 2732
    :cond_d
    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v14

    move/from16 v0, p8

    if-le v14, v0, :cond_7

    .line 2734
    const/4 v9, 0x1

    .line 2736
    const/4 v14, 0x0

    move/from16 v0, p8

    invoke-interface {v8, v14, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    goto :goto_5

    .line 2743
    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public static parseExtrasForSIM2(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 25
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Lcom/android/contacts/model/AccountType;
    .param p2, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 2035
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Bundle;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 2101
    :cond_0
    :goto_0
    return-void

    .line 2043
    :cond_1
    const/16 v23, 0x0

    .line 2045
    .local v23, "overPhoneMaxLength":Z
    const/16 v22, 0x0

    .line 2051
    .local v22, "overEmailMaxLength":Z
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2053
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v20

    .line 2057
    .local v20, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 2061
    .local v21, "name":Ljava/lang/String;
    if-eqz v20, :cond_2

    invoke-static/range {v21 .. v21}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2063
    const-string v2, "data1"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2071
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v24

    .line 2073
    .local v24, "simManager":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    sget v2, Lcom/android/contacts/model/EntityModifier;->SIM_ONE:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isEmailFull(I)Z

    move-result v18

    .line 2079
    .local v18, "isEmailFull":Z
    sget v2, Lcom/android/contacts/model/EntityModifier;->SIM_ONE:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getNumberLength(I)I

    move-result v10

    .line 2081
    .local v10, "numMaxLength":I
    const-string v2, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 2083
    .local v3, "kind":Lcom/android/contacts/model/DataKind;
    const-string v5, "phone_type"

    const-string v6, "phone"

    const-string v7, "data1"

    const-string v8, "vnd.android.cursor.item/phone_v2"

    const/4 v9, 0x0

    move-object/from16 v2, p2

    move-object/from16 v4, p3

    invoke-static/range {v2 .. v10}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v23

    .line 2093
    sget v2, Lcom/android/contacts/model/EntityModifier;->SIM_ONE:I

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getEmailLength(I)I

    move-result v19

    .line 2095
    .local v19, "emailMaxLength":I
    const-string v2, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v3

    .line 2097
    const-string v14, "email_type"

    const-string v15, "email"

    const-string v16, "data1"

    const-string v17, "vnd.android.cursor.item/email_v2"

    move-object/from16 v11, p2

    move-object v12, v3

    move-object/from16 v13, p3

    invoke-static/range {v11 .. v19}, Lcom/android/contacts/model/EntityModifier;->parseExtrasForSIM(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v22

    .line 2101
    goto :goto_0
.end method

.method private static parseStructuredNameExtra(Landroid/content/Context;Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 31
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Lcom/android/contacts/model/AccountType;
    .param p2, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1420
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/android/contacts/model/EntityModifier;->ensureKindExists(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1422
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/EntityDelta;->getPrimaryEntry(Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v8

    .line 1423
    .local v8, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v2, "data"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    .line 1425
    .local v10, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    const-string v2, "name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 1427
    .local v22, "name":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1429
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v18

    .line 1431
    .local v18, "kind":Lcom/android/contacts/model/DataKind;
    const/16 v29, 0x0

    .line 1432
    .local v29, "supportsDisplayName":Z
    const-string v2, "cnam"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    .line 1433
    .local v17, "isCNAM":Z
    const-string v2, "data3"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1437
    .local v19, "lastName":Ljava/lang/String;
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1439
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/AccountType$EditField;

    .line 1441
    .local v13, "field":Lcom/android/contacts/model/AccountType$EditField;
    const-string v2, "data1"

    iget-object v4, v13, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1443
    const/16 v29, 0x1

    .line 1455
    .end local v13    # "field":Lcom/android/contacts/model/AccountType$EditField;
    .end local v16    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v8, :cond_5

    if-eqz v29, :cond_5

    .line 1456
    if-eqz v17, :cond_4

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1457
    const-string v2, "data2"

    move-object/from16 v0, v22

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1458
    const-string v2, "data3"

    move-object/from16 v0, v19

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    const-string v2, "data1"

    invoke-virtual {v8}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAfter()Landroid/content/ContentValues;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/android/contacts/util/NameConverter;->structuredNameToDisplayName(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1571
    .end local v17    # "isCNAM":Z
    .end local v18    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v19    # "lastName":Ljava/lang/String;
    .end local v29    # "supportsDisplayName":Z
    :cond_2
    :goto_0
    const-string v2, "phonetic_name"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 1573
    .local v26, "phoneticName":Ljava/lang/String;
    if-eqz v8, :cond_13

    invoke-static/range {v26 .. v26}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1575
    const-string v2, "data7"

    move-object/from16 v0, v26

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    :cond_3
    :goto_1
    return-void

    .line 1461
    .end local v26    # "phoneticName":Ljava/lang/String;
    .restart local v17    # "isCNAM":Z
    .restart local v18    # "kind":Lcom/android/contacts/model/DataKind;
    .restart local v19    # "lastName":Ljava/lang/String;
    .restart local v29    # "supportsDisplayName":Z
    :cond_4
    const-string v2, "data1"

    move-object/from16 v0, v22

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1465
    :cond_5
    const/4 v3, 0x0

    .line 1466
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v17, :cond_7

    invoke-static/range {v19 .. v19}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1467
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "complete_name"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "data2"

    move-object/from16 v0, v22

    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "data3"

    move-object/from16 v0, v19

    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 1479
    :goto_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "data4"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "data2"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "data5"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "data3"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "data6"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1499
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1501
    if-eqz v8, :cond_6

    .line 1502
    const-string v2, "data4"

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1504
    const-string v2, "data2"

    const/4 v4, 0x1

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    const-string v2, "data5"

    const/4 v4, 0x2

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const-string v2, "data3"

    const/4 v4, 0x3

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    const-string v2, "data6"

    const/4 v4, 0x4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v2, v4}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1517
    :cond_6
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1473
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_7
    sget-object v2, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "complete_name"

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "data1"

    move-object/from16 v0, v22

    invoke-virtual {v2, v4, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    goto :goto_2

    .line 1517
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1523
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v9    # "cursor":Landroid/database/Cursor;
    .end local v17    # "isCNAM":Z
    .end local v18    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v19    # "lastName":Ljava/lang/String;
    .end local v29    # "supportsDisplayName":Z
    :cond_8
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1524
    const/4 v11, 0x0

    .line 1525
    .local v11, "displayName":Ljava/lang/String;
    const/16 v27, 0x0

    .line 1526
    .local v27, "prefix":Ljava/lang/String;
    const/4 v14, 0x0

    .line 1527
    .local v14, "givenName":Ljava/lang/String;
    const/16 v20, 0x0

    .line 1528
    .local v20, "middleName":Ljava/lang/String;
    const/4 v12, 0x0

    .line 1529
    .local v12, "familyName":Ljava/lang/String;
    const/16 v28, 0x0

    .line 1531
    .local v28, "suffix":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/ContentValues;

    .line 1532
    .local v30, "values":Landroid/content/ContentValues;
    const-string v2, "mimetype"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1533
    .local v21, "mimeType":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1534
    const-string v2, "data1"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1535
    const-string v2, "data4"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 1536
    const-string v2, "data2"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1537
    const-string v2, "data5"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1538
    const-string v2, "data3"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1539
    const-string v2, "data6"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 1544
    .end local v21    # "mimeType":Ljava/lang/String;
    .end local v30    # "values":Landroid/content/ContentValues;
    :cond_a
    if-eqz v8, :cond_2

    invoke-static {v11}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1545
    const/16 v29, 0x0

    .line 1547
    .restart local v29    # "supportsDisplayName":Z
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v18

    .line 1549
    .restart local v18    # "kind":Lcom/android/contacts/model/DataKind;
    if-eqz v18, :cond_c

    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v2, :cond_c

    .line 1550
    move-object/from16 v0, v18

    iget-object v2, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_b
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/contacts/model/AccountType$EditField;

    .line 1551
    .restart local v13    # "field":Lcom/android/contacts/model/AccountType$EditField;
    const-string v2, "data1"

    iget-object v4, v13, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1552
    const/16 v29, 0x1

    .line 1558
    .end local v13    # "field":Lcom/android/contacts/model/AccountType$EditField;
    :cond_c
    if-eqz v29, :cond_d

    .line 1559
    const-string v2, "data1"

    invoke-virtual {v8, v2, v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    :cond_d
    const-string v2, "data4"

    invoke-static/range {v27 .. v27}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    .end local v27    # "prefix":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, v27

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    const-string v2, "data2"

    invoke-static {v14}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_f

    .end local v14    # "givenName":Ljava/lang/String;
    :goto_4
    invoke-virtual {v8, v2, v14}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1563
    const-string v2, "data5"

    invoke-static/range {v20 .. v20}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_10

    .end local v20    # "middleName":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, v20

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1564
    const-string v2, "data3"

    invoke-static {v12}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_11

    .end local v12    # "familyName":Ljava/lang/String;
    :goto_6
    invoke-virtual {v8, v2, v12}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1565
    const-string v2, "data6"

    invoke-static/range {v28 .. v28}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_12

    .end local v28    # "suffix":Ljava/lang/String;
    :goto_7
    move-object/from16 v0, v28

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1561
    .restart local v12    # "familyName":Ljava/lang/String;
    .restart local v14    # "givenName":Ljava/lang/String;
    .restart local v20    # "middleName":Ljava/lang/String;
    .restart local v27    # "prefix":Ljava/lang/String;
    .restart local v28    # "suffix":Ljava/lang/String;
    :cond_e
    const/16 v27, 0x0

    goto :goto_3

    .line 1562
    .end local v27    # "prefix":Ljava/lang/String;
    :cond_f
    const/4 v14, 0x0

    goto :goto_4

    .line 1563
    .end local v14    # "givenName":Ljava/lang/String;
    :cond_10
    const/16 v20, 0x0

    goto :goto_5

    .line 1564
    .end local v20    # "middleName":Ljava/lang/String;
    :cond_11
    const/4 v12, 0x0

    goto :goto_6

    .line 1565
    .end local v12    # "familyName":Ljava/lang/String;
    :cond_12
    const/16 v28, 0x0

    goto :goto_7

    .line 1577
    .end local v11    # "displayName":Ljava/lang/String;
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v18    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v28    # "suffix":Ljava/lang/String;
    .end local v29    # "supportsDisplayName":Z
    .restart local v26    # "phoneticName":Ljava/lang/String;
    :cond_13
    if-eqz v10, :cond_3

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 1578
    const/4 v15, 0x0

    .line 1579
    .local v15, "hasPhoneticName":Z
    const/16 v24, 0x0

    .line 1580
    .local v24, "phoneticGivenName":Ljava/lang/String;
    const/16 v25, 0x0

    .line 1581
    .local v25, "phoneticMiddleName":Ljava/lang/String;
    const/16 v23, 0x0

    .line 1583
    .local v23, "phoneticFamilyName":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "i$":Ljava/util/Iterator;
    :cond_14
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/content/ContentValues;

    .line 1584
    .restart local v30    # "values":Landroid/content/ContentValues;
    const-string v2, "mimetype"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1585
    .restart local v21    # "mimeType":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/name"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1586
    const-string v2, "data7"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 1587
    const-string v2, "data8"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1588
    const-string v2, "data9"

    move-object/from16 v0, v30

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1589
    invoke-static/range {v24 .. v24}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static/range {v25 .. v25}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_15

    invoke-static/range {v23 .. v23}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1592
    :cond_15
    const/4 v15, 0x1

    .line 1598
    .end local v21    # "mimeType":Ljava/lang/String;
    .end local v30    # "values":Landroid/content/ContentValues;
    :cond_16
    if-eqz v8, :cond_3

    if-eqz v15, :cond_3

    .line 1599
    const-string v2, "data7"

    invoke-static/range {v24 .. v24}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_17

    .end local v24    # "phoneticGivenName":Ljava/lang/String;
    :goto_8
    move-object/from16 v0, v24

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1600
    const-string v2, "data8"

    invoke-static/range {v25 .. v25}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_18

    .end local v25    # "phoneticMiddleName":Ljava/lang/String;
    :goto_9
    move-object/from16 v0, v25

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1601
    const-string v2, "data9"

    invoke-static/range {v23 .. v23}, Lcom/android/contacts/ContactsUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    .end local v23    # "phoneticFamilyName":Ljava/lang/String;
    :goto_a
    move-object/from16 v0, v23

    invoke-virtual {v8, v2, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1599
    .restart local v23    # "phoneticFamilyName":Ljava/lang/String;
    .restart local v24    # "phoneticGivenName":Ljava/lang/String;
    .restart local v25    # "phoneticMiddleName":Ljava/lang/String;
    :cond_17
    const/16 v24, 0x0

    goto :goto_8

    .line 1600
    .end local v24    # "phoneticGivenName":Ljava/lang/String;
    :cond_18
    const/16 v25, 0x0

    goto :goto_9

    .line 1601
    .end local v25    # "phoneticMiddleName":Ljava/lang/String;
    :cond_19
    const/16 v23, 0x0

    goto :goto_a
.end method

.method private static parseStructuredPostalExtra(Lcom/android/contacts/model/AccountType;Lcom/android/contacts/model/EntityDelta;Landroid/os/Bundle;)V
    .locals 12
    .param p0, "accountType"    # Lcom/android/contacts/model/AccountType;
    .param p1, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1615
    const-string v0, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v1

    .line 1617
    .local v1, "kind":Lcom/android/contacts/model/DataKind;
    const-string v3, "postal_type"

    const-string v4, "postal"

    const-string v5, "data1"

    move-object v0, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/android/contacts/model/EntityModifier;->parseExtras(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/DataKind;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v7

    .line 1621
    .local v7, "child":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    if-nez v7, :cond_3

    const/4 v6, 0x0

    .line 1625
    .local v6, "address":Ljava/lang/String;
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1627
    const/4 v11, 0x0

    .line 1629
    .local v11, "supportsFormatted":Z
    iget-object v0, v1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 1631
    iget-object v0, v1, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/model/AccountType$EditField;

    .line 1633
    .local v8, "field":Lcom/android/contacts/model/AccountType$EditField;
    const-string v0, "data1"

    iget-object v2, v8, Lcom/android/contacts/model/AccountType$EditField;->column:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1635
    const/4 v11, 0x1

    .line 1647
    .end local v8    # "field":Lcom/android/contacts/model/AccountType$EditField;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_1
    if-eqz v7, :cond_2

    if-nez v11, :cond_2

    .line 1648
    const-string v0, "cnam"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    .line 1649
    .local v10, "isCNAM":Z
    if-eqz v10, :cond_4

    .line 1650
    const-string v0, "data7"

    invoke-virtual {v7, v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1654
    :goto_1
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->putNull(Ljava/lang/String;)V

    .line 1659
    .end local v10    # "isCNAM":Z
    .end local v11    # "supportsFormatted":Z
    :cond_2
    return-void

    .line 1621
    .end local v6    # "address":Ljava/lang/String;
    :cond_3
    const-string v0, "data1"

    invoke-virtual {v7, v0}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    .line 1652
    .restart local v6    # "address":Ljava/lang/String;
    .restart local v10    # "isCNAM":Z
    .restart local v11    # "supportsFormatted":Z
    :cond_4
    const-string v0, "data4"

    invoke-virtual {v7, v0, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static parseValues(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;Ljava/util/ArrayList;)V
    .locals 13
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "accountType"    # Lcom/android/contacts/model/AccountType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/contacts/model/EntityDelta;",
            "Lcom/android/contacts/model/AccountType;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2109
    .local p2, "dataValueList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 2111
    .local v9, "values":Landroid/content/ContentValues;
    const-string v10, "mimetype"

    invoke-virtual {v9, v10}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2113
    .local v8, "mimeType":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 2115
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype is required. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2125
    :cond_1
    const-string v10, "vnd.android.cursor.item/name"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2133
    invoke-virtual {p1, v8}, Lcom/android/contacts/model/AccountType;->getKindForMimetype(Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v7

    .line 2135
    .local v7, "kind":Lcom/android/contacts/model/DataKind;
    if-nez v7, :cond_2

    .line 2137
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype not supported for account type "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Lcom/android/contacts/model/AccountType;->getAccountTypeAndDataSet()Lcom/android/contacts/model/AccountTypeWithDataSet;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2147
    :cond_2
    invoke-static {v9}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->fromAfter(Landroid/content/ContentValues;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v4

    .line 2149
    .local v4, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-static {v4, v7}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2157
    invoke-virtual {p0, v8}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 2161
    .local v3, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    iget-boolean v10, v7, Lcom/android/contacts/model/DataKind;->isList:Z

    if-nez v10, :cond_3

    const-string v10, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2165
    :cond_3
    const/4 v0, 0x1

    .line 2167
    .local v0, "addEntry":Z
    const/4 v1, 0x0

    .line 2169
    .local v1, "count":I
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_5

    .line 2171
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2173
    .local v2, "delta":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_4

    .line 2175
    invoke-static {v2, v9, v7}, Lcom/android/contacts/model/EntityModifier;->areEqual(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Landroid/content/ContentValues;Lcom/android/contacts/model/DataKind;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2177
    const/4 v0, 0x0

    .line 2193
    .end local v2    # "delta":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_5
    iget v10, v7, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_6

    iget v10, v7, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    if-lt v1, v10, :cond_6

    .line 2195
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Mimetype allows at most "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v7, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " entries. Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2199
    const/4 v0, 0x0

    .line 2205
    :cond_6
    if-eqz v0, :cond_7

    .line 2207
    invoke-static {v4, v3, v7}, Lcom/android/contacts/model/EntityModifier;->adjustType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/DataKind;)Z

    move-result v0

    .line 2213
    :cond_7
    if-eqz v0, :cond_0

    .line 2215
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto/16 :goto_0

    .line 2183
    .restart local v2    # "delta":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2223
    .end local v0    # "addEntry":Z
    .end local v1    # "count":I
    .end local v2    # "delta":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_9
    const/4 v0, 0x1

    .line 2225
    .restart local v0    # "addEntry":Z
    if-eqz v3, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_c

    .line 2227
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2229
    .restart local v2    # "delta":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isDelete()Z

    move-result v10

    if-nez v10, :cond_a

    invoke-static {v2, v7}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 2231
    const/4 v0, 0x0

    .line 2239
    .end local v2    # "delta":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_b
    if-eqz v0, :cond_c

    .line 2241
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2243
    .restart local v2    # "delta":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_2

    .line 2253
    .end local v2    # "delta":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_c
    if-eqz v0, :cond_d

    .line 2255
    invoke-static {v4, v3, v7}, Lcom/android/contacts/model/EntityModifier;->adjustType(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Ljava/util/ArrayList;Lcom/android/contacts/model/DataKind;)Z

    move-result v0

    .line 2261
    :cond_d
    if-eqz v0, :cond_e

    .line 2263
    invoke-virtual {p0, v4}, Lcom/android/contacts/model/EntityDelta;->addEntry(Lcom/android/contacts/model/EntityDelta$ValuesDelta;)Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    goto/16 :goto_0

    .line 2265
    :cond_e
    const-string v10, "vnd.android.cursor.item/note"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 2271
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 2273
    .restart local v2    # "delta":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-static {v2, v7}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v10

    if-nez v10, :cond_f

    .line 2275
    const-string v10, "data1"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "data1"

    invoke-virtual {v2, v12}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "data1"

    invoke-virtual {v9, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2287
    .end local v2    # "delta":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v6    # "i$":Ljava/util/Iterator;
    :cond_10
    const-string v10, "EntityModifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Will not override mimetype "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ". Ignoring: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 2297
    .end local v0    # "addEntry":Z
    .end local v3    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v4    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v7    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v8    # "mimeType":Ljava/lang/String;
    .end local v9    # "values":Landroid/content/ContentValues;
    :cond_11
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V
    .locals 17
    .param p0, "state"    # Lcom/android/contacts/model/EntityDelta;
    .param p1, "accountType"    # Lcom/android/contacts/model/AccountType;

    .prologue
    .line 1004
    const/4 v3, 0x0

    .line 1010
    .local v3, "hasValues":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/AccountType;->getSortedDataKinds()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/contacts/model/DataKind;

    .line 1012
    .local v11, "kind":Lcom/android/contacts/model/DataKind;
    iget-object v12, v11, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    .line 1014
    .local v12, "mimeType":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lcom/android/contacts/model/EntityDelta;->getMimeEntries(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 1016
    .local v1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    if-eqz v1, :cond_0

    .line 1020
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    .line 1024
    .local v2, "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isInsert()Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isUpdate()Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_2
    const/4 v13, 0x1

    .line 1026
    .local v13, "touched":Z
    :goto_1
    if-nez v13, :cond_4

    .line 1028
    const/4 v3, 0x1

    .line 1030
    goto :goto_0

    .line 1024
    .end local v13    # "touched":Z
    :cond_3
    const/4 v13, 0x0

    goto :goto_1

    .line 1038
    .restart local v13    # "touched":Z
    :cond_4
    const-string v14, "com.google"

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    const-string v16, "account_type"

    invoke-virtual/range {v15 .. v16}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    .line 1042
    .local v8, "isGoogleAccount":Z
    const-string v14, "vnd.sec.contact.phone"

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v15

    const-string v16, "account_type"

    invoke-virtual/range {v15 .. v16}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    .line 1046
    .local v6, "isFallbackAccount":Z
    const-string v14, "vnd.android.cursor.item/photo"

    iget-object v15, v11, Lcom/android/contacts/model/DataKind;->mimeType:Ljava/lang/String;

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    .line 1048
    .local v10, "isPhoto":Z
    if-eqz v10, :cond_5

    if-eqz v8, :cond_5

    const/4 v9, 0x1

    .line 1050
    .local v9, "isGooglePhoto":Z
    :goto_2
    if-eqz v10, :cond_6

    if-eqz v6, :cond_6

    const/4 v7, 0x1

    .line 1054
    .local v7, "isFallbackPhoto":Z
    :goto_3
    invoke-static {v2, v11}, Lcom/android/contacts/model/EntityModifier;->isEmpty(Lcom/android/contacts/model/EntityDelta$ValuesDelta;Lcom/android/contacts/model/DataKind;)Z

    move-result v14

    if-eqz v14, :cond_7

    if-nez v9, :cond_7

    if-nez v7, :cond_7

    .line 1062
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->markDeleted()V

    goto :goto_0

    .line 1048
    .end local v7    # "isFallbackPhoto":Z
    .end local v9    # "isGooglePhoto":Z
    :cond_5
    const/4 v9, 0x0

    goto :goto_2

    .line 1050
    .restart local v9    # "isGooglePhoto":Z
    :cond_6
    const/4 v7, 0x0

    goto :goto_3

    .line 1064
    .restart local v7    # "isFallbackPhoto":Z
    :cond_7
    invoke-virtual {v2}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->isFromTemplate()Z

    move-result v14

    if-nez v14, :cond_1

    .line 1066
    const/4 v3, 0x1

    goto :goto_0

    .line 1074
    .end local v1    # "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/model/EntityDelta$ValuesDelta;>;"
    .end local v2    # "entry":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "isFallbackAccount":Z
    .end local v7    # "isFallbackPhoto":Z
    .end local v8    # "isGoogleAccount":Z
    .end local v9    # "isGooglePhoto":Z
    .end local v10    # "isPhoto":Z
    .end local v11    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v12    # "mimeType":Ljava/lang/String;
    .end local v13    # "touched":Z
    :cond_8
    if-nez v3, :cond_9

    .line 1078
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/model/EntityDelta;->markDeleted()V

    .line 1082
    :cond_9
    return-void
.end method

.method public static trimEmpty(Lcom/android/contacts/model/EntityDeltaList;Lcom/android/contacts/model/AccountTypeManager;)V
    .locals 7
    .param p0, "set"    # Lcom/android/contacts/model/EntityDeltaList;
    .param p1, "accountTypes"    # Lcom/android/contacts/model/AccountTypeManager;

    .prologue
    .line 908
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/EntityDelta;

    .line 910
    .local v3, "state":Lcom/android/contacts/model/EntityDelta;
    invoke-virtual {v3}, Lcom/android/contacts/model/EntityDelta;->getValues()Lcom/android/contacts/model/EntityDelta$ValuesDelta;

    move-result-object v5

    .line 912
    .local v5, "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 914
    .local v0, "accountType":Ljava/lang/String;
    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Lcom/android/contacts/model/EntityDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 916
    .local v1, "dataSet":Ljava/lang/String;
    invoke-virtual {p1, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v4

    .line 918
    .local v4, "type":Lcom/android/contacts/model/AccountType;
    invoke-static {v3, v4}, Lcom/android/contacts/model/EntityModifier;->trimEmpty(Lcom/android/contacts/model/EntityDelta;Lcom/android/contacts/model/AccountType;)V

    goto :goto_0

    .line 922
    .end local v0    # "accountType":Ljava/lang/String;
    .end local v1    # "dataSet":Ljava/lang/String;
    .end local v3    # "state":Lcom/android/contacts/model/EntityDelta;
    .end local v4    # "type":Lcom/android/contacts/model/AccountType;
    .end local v5    # "values":Lcom/android/contacts/model/EntityDelta$ValuesDelta;
    :cond_0
    return-void
.end method
