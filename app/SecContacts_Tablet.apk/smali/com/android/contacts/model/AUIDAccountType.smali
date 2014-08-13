.class public Lcom/android/contacts/model/AUIDAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "AUIDAccountType.java"


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "au ID"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "com.kddi.ast.auoneid"

.field protected static final FLAGS_RELATION:I = 0x2061

.field private static final TAG:Ljava/lang/String; = "AUIDAccountType"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "authenticatorPackageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 31
    const-string v1, "com.kddi.ast.auoneid"

    iput-object v1, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 32
    iput-object v2, p0, Lcom/android/contacts/model/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/android/contacts/model/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 34
    iput-object v2, p0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    .line 37
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 38
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindNickname(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 41
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AUIDAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/AUIDAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindStructuredPostal(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindIm(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindOrganization(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 46
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhoto(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindNote(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindWebsite(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 50
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_DisableSipAddress"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindSipAddress(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindGroupMembership(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 56
    invoke-direct {p0, p1}, Lcom/android/contacts/model/AUIDAccountType;->addDataKindRelation(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/contacts/model/AUIDAccountType;->addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 58
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindRingtone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindAlerttone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 60
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindVibration(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/model/AccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/model/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Lcom/android/contacts/model/AccountType$DefinitionException;
    const-string v1, "AUIDAccountType"

    const-string v2, "Problem building account type"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private addDataKindEvent(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0e0125

    const/4 v10, 0x3

    const/4 v9, 0x0

    const/4 v5, 0x1

    .line 146
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/contact_event"

    const/4 v3, -0x1

    const/16 v4, 0x96

    const v6, 0x7f040136

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 149
    .local v8, "kind":Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$EventActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$EventActionInflater;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 152
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;

    const-string v1, "data1"

    const-string v3, "data15"

    invoke-direct {v0, v1, v3}, Lcom/android/contacts/model/BaseAccountType$BirthdayInflater;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 154
    const-string v0, "data2"

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 155
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 156
    sget-object v0, Lcom/android/contacts/util/DateUtils;->NO_YEAR_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->dateFormatWithoutYear:Ljava/text/SimpleDateFormat;

    .line 157
    sget-object v0, Lcom/android/contacts/util/DateUtils;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->dateFormatWithYear:Ljava/text/SimpleDateFormat;

    .line 158
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v10, v5}, Lcom/android/contacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5, v9}, Lcom/android/contacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v9}, Lcom/android/contacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v9, v9}, Lcom/android/contacts/model/BaseAccountType;->buildEventType(IZ)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data3"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 165
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 167
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 168
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    invoke-direct {v1, v3, v2, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    return-object v8
.end method

.method private addDataKindRelation(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const v2, 0x7f0e0126

    const/16 v9, 0xe

    const/4 v5, 0x1

    .line 110
    new-instance v0, Lcom/android/contacts/model/DataKind;

    const-string v1, "vnd.android.cursor.item/relation"

    const/4 v3, -0x1

    const/16 v4, 0xa0

    const v6, 0x7f04020c

    const v7, 0x101006e

    invoke-direct/range {v0 .. v7}, Lcom/android/contacts/model/DataKind;-><init>(Ljava/lang/String;IIIZII)V

    invoke-virtual {p0, v0}, Lcom/android/contacts/model/AccountType;->addKind(Lcom/android/contacts/model/DataKind;)Lcom/android/contacts/model/DataKind;

    move-result-object v8

    .line 113
    .local v8, "kind":Lcom/android/contacts/model/DataKind;
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$RelationActionInflater;

    invoke-direct {v0}, Lcom/android/contacts/model/BaseAccountType$RelationActionInflater;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 114
    new-instance v0, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;

    const-string v1, "data1"

    invoke-direct {v0, v1}, Lcom/android/contacts/model/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 116
    const-string v0, "data2"

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 117
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 118
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v9}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/contacts/model/BaseAccountType;->buildRelationType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    const-string v3, "data3"

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    .line 136
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->defaultValues:Landroid/content/ContentValues;

    const-string v1, "data2"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 138
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 139
    iget-object v0, v8, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v1, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const/16 v4, 0x2061

    invoke-direct {v1, v3, v2, v4}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    return-object v8
.end method


# virtual methods
.method protected addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 93
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 95
    .local v0, "kind":Lcom/android/contacts/model/DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 97
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/BaseAccountType;->buildEmailType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    const-string v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 104
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0e0289

    const/16 v5, 0x21

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    return-object v0
.end method

.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v3, 0x1

    .line 70
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 72
    .local v0, "kind":Lcom/android/contacts/model/DataKind;
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 73
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 74
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/contacts/model/BaseAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSecondary(Z)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    const-string v3, "data3"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setCustomColumn(Ljava/lang/String;)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 86
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0e0288

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-object v0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public getHeaderColor(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 175
    const v0, -0x763d3e

    return v0
.end method

.method public getSideBarColor(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const v0, -0xa44b4c

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x1

    return v0
.end method
