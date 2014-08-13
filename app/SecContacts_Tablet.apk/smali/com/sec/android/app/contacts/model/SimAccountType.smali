.class public Lcom/sec/android/app/contacts/model/SimAccountType;
.super Lcom/android/contacts/model/BaseAccountType;
.source "SimAccountType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/SimAccountType$1;,
        Lcom/sec/android/app/contacts/model/SimAccountType$PhoneActionInflater;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "primary.sim.account_name"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "vnd.sec.contact.sim"

.field public static final SIM_ZERO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SimAccountType"


# instance fields
.field private mIsKnoxMode:Z

.field private mPhoneRestrictionPolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 46
    invoke-direct {p0}, Lcom/android/contacts/model/BaseAccountType;-><init>()V

    .line 47
    const-string v3, "vnd.sec.contact.sim"

    iput-object v3, p0, Lcom/android/contacts/model/AccountType;->accountType:Ljava/lang/String;

    .line 48
    iput-object v5, p0, Lcom/android/contacts/model/AccountType;->dataSet:Ljava/lang/String;

    .line 49
    invoke-static {p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    .line 50
    .local v2, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 53
    const v3, 0x7f0e0282

    iput v3, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    .line 60
    :goto_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    const-string v3, "vnd.sec.contact.sim"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimIcon(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    .line 66
    :goto_1
    const-string v3, "enterprise_policy"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 67
    .local v1, "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-virtual {v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Landroid/app/enterprise/PhoneRestrictionPolicy;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/model/SimAccountType;->mPhoneRestrictionPolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;

    .line 69
    iput-object v5, p0, Lcom/android/contacts/model/AccountType;->resourcePackageName:Ljava/lang/String;

    .line 70
    iget-object v3, p0, Lcom/android/contacts/model/AccountType;->resourcePackageName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/contacts/model/AccountType;->syncAdapterPackageName:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/model/SimAccountType;->mIsKnoxMode:Z

    .line 82
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindStructuredName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindDisplayName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhoneticName(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 85
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/SimAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindEmail(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    .line 87
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/contacts/model/AccountType;->mIsInitialized:Z
    :try_end_0
    .catch Lcom/android/contacts/model/AccountType$DefinitionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_2
    return-void

    .line 55
    .end local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :cond_0
    const v3, 0x7f0e0281

    iput v3, p0, Lcom/android/contacts/model/AccountType;->titleRes:I

    goto :goto_0

    .line 63
    :cond_1
    const v3, 0x7f0203db

    iput v3, p0, Lcom/android/contacts/model/AccountType;->iconRes:I

    goto :goto_1

    .line 88
    .restart local v1    # "edm":Landroid/app/enterprise/EnterpriseDeviceManager;
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Lcom/android/contacts/model/AccountType$DefinitionException;
    const-string v3, "SimAccountType"

    const-string v4, "Problem building account type"

    invoke-static {v3, v4, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
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

    .line 96
    invoke-super {p0, p1}, Lcom/android/contacts/model/BaseAccountType;->addDataKindPhone(Landroid/content/Context;)Lcom/android/contacts/model/DataKind;

    move-result-object v0

    .line 98
    .local v0, "kind":Lcom/android/contacts/model/DataKind;
    new-instance v1, Lcom/sec/android/app/contacts/model/SimAccountType$PhoneActionInflater;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sec/android/app/contacts/model/SimAccountType$PhoneActionInflater;-><init>(Lcom/sec/android/app/contacts/model/SimAccountType$1;)V

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->actionHeader:Lcom/android/contacts/model/AccountType$StringInflater;

    .line 99
    iput v4, v0, Lcom/android/contacts/model/DataKind;->typeOverallMax:I

    .line 101
    const-string v1, "data2"

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeColumn:Ljava/lang/String;

    .line 102
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    .line 103
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/model/SimAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/model/SimAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/sec/android/app/contacts/model/SimAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->typeList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lcom/sec/android/app/contacts/model/SimAccountType;->buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/AccountType$EditType;->setSpecificMax(I)Lcom/android/contacts/model/AccountType$EditType;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    .line 109
    iget-object v1, v0, Lcom/android/contacts/model/DataKind;->fieldList:Ljava/util/List;

    new-instance v2, Lcom/android/contacts/model/AccountType$EditField;

    const-string v3, "data1"

    const v4, 0x7f0e0288

    invoke-direct {v2, v3, v4, v5}, Lcom/android/contacts/model/AccountType$EditField;-><init>(Ljava/lang/String;II)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    return-object v0
.end method

.method public areContactsWritable()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 187
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/model/SimAccountType;->mIsKnoxMode:Z

    if-eqz v1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return v0

    .line 191
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/SimAccountType;->mPhoneRestrictionPolicy:Landroid/app/enterprise/PhoneRestrictionPolicy;

    invoke-virtual {v1}, Landroid/app/enterprise/PhoneRestrictionPolicy;->isCopyContactToSimAllowed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_DisableMenuSimExportImport"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected buildPhoneType(I)Lcom/android/contacts/model/AccountType$EditType;
    .locals 2
    .param p1, "type"    # I

    .prologue
    .line 159
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    if-lez v0, :cond_1

    .line 160
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 161
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v1

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    .line 166
    :goto_0
    return-object v0

    .line 163
    :cond_0
    new-instance v0, Lcom/android/contacts/model/AccountType$EditType;

    const v1, 0x7f0e03d9

    invoke-direct {v0, p1, v1}, Lcom/android/contacts/model/AccountType$EditType;-><init>(II)V

    goto :goto_0

    .line 166
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
    .line 172
    const v0, -0x806c44

    return v0
.end method

.method public getSideBarColor(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 177
    const v0, -0x423848

    return v0
.end method

.method public isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    return v0
.end method
