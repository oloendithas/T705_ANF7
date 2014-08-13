.class public Lcom/sec/android/app/contacts/model/Sim2AccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "Sim2AccountType.java"


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "primary.sim2.account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "vnd.sec.contact.sim2"

.field public static final SIM_ONE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Sim2AccountType"


# instance fields
.field private mIsKnoxMode:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 48
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 49
    invoke-static {p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 51
    .local v1, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v2, "vnd.sec.contact.sim2"

    iput-object v2, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 52
    iput-object v3, p0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    .line 53
    const v2, 0x7f0e03f0

    iput v2, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    .line 57
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const-string v2, "vnd.sec.contact.sim2"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    .line 63
    :goto_0
    iput-object v3, p0, Lcom/android/contacts/model/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 64
    iget-object v2, p0, Lcom/android/contacts/model/AccountType;->resourcePackageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/contacts/model/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/model/Sim2AccountType;->mIsKnoxMode:Z

    .line 76
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 77
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 78
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 79
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/Sim2AccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 81
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/model/AccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/model/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_1
    return-void

    .line 60
    :cond_0
    const v2, 0x7f0203db

    iput v2, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Lcom/android/contacts/model/AccountType$DefinitionException;
    const-string v2, "Sim2AccountType"

    const-string v3, "Problem building account type"

    invoke-static {v2, v3, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method protected addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/model/AccountType$DefinitionException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v3, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 92
    .local v0, "kind":Lcom/android/contacts/model/DataKind;
    new-instance v1, Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;

    invoke-direct {v1}, Lcom/android/contacts/model/BaseAccountType$PhoneActionInflater;-><init>()V

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 93
    iput v4, v0, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 95
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 96
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 97
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/model/Sim2AccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/model/Sim2AccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/model/Sim2AccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/model/Sim2AccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 103
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0e0288

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    return-object v0
.end method

.method public areContactsWritable()Z
    .locals 1

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/Sim2AccountType;->mIsKnoxMode:Z

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 109
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 110
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 111
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    .line 116
    :goto_0
    return-object v0

    .line 113
    :cond_0
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    const v1, 0x7f0e03d9

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    goto :goto_0

    .line 116
    :cond_1
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    goto :goto_0
.end method

.method public getHeaderColor(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 122
    const v0, -0x806c44

    return v0
.end method

.method public getSideBarColor(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    const v0, -0x423848

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    return v0
.end method
