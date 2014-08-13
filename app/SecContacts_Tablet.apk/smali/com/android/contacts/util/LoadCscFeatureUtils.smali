.class public Lcom/android/contacts/util/LoadCscFeatureUtils;
.super Ljava/lang/Object;
.source "LoadCscFeatureUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LoadCscFeatureUtils"

.field private static final THREEG:Ljava/lang/String; = "2"

.field private static mDoNotSaveEmergencyNumber:Z

.field private static mDoNotSaveOTASPNumber:Z

.field private static mEnableDualStandbyContacts:Z

.field private static mEnableDualStandbyContactsForCG:Z

.field private static mEnableDualStandbyContactsForGG:Z

.field private static mEnablePhoneReadOnlyAccountType:Z

.field private static mEnableSetTitleOnActionBar:Z

.field private static mEnableSupportFuzzySearch:Z

.field private static mEnableSupportMultiPinyinSearch:Z

.field private static mEnableYellowPageForChina:Z

.field private static mShowIconWithTextOnActionBar:Z

.field private static sLoadCscFeatureUtils:Lcom/android/contacts/util/LoadCscFeatureUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 36
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->sLoadCscFeatureUtils:Lcom/android/contacts/util/LoadCscFeatureUtils;

    .line 40
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSupportFuzzySearch:Z

    .line 42
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSupportMultiPinyinSearch:Z

    .line 44
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mShowIconWithTextOnActionBar:Z

    .line 46
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSetTitleOnActionBar:Z

    .line 48
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotSaveEmergencyNumber:Z

    .line 50
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotSaveOTASPNumber:Z

    .line 52
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContacts:Z

    .line 54
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContactsForCG:Z

    .line 56
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContactsForGG:Z

    .line 58
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableYellowPageForChina:Z

    .line 60
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnablePhoneReadOnlyAccountType:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->sLoadCscFeatureUtils:Lcom/android/contacts/util/LoadCscFeatureUtils;

    if-nez v0, :cond_0

    .line 64
    new-instance v0, Lcom/android/contacts/util/LoadCscFeatureUtils;

    invoke-direct {v0}, Lcom/android/contacts/util/LoadCscFeatureUtils;-><init>()V

    sput-object v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->sLoadCscFeatureUtils:Lcom/android/contacts/util/LoadCscFeatureUtils;

    .line 65
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->setCscFeature()V

    .line 67
    :cond_0
    sget-object v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->sLoadCscFeatureUtils:Lcom/android/contacts/util/LoadCscFeatureUtils;

    return-object v0
.end method

.method private getSimType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSimType(I)Ljava/lang/String;
    .locals 1
    .param p1, "simCardId"    # I

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSimType()Ljava/lang/String;

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ril.ICC_TYPE2"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static setCscFeature()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    .line 158
    .local v0, "cscFeature":Lcom/sec/android/app/CscFeature;
    const-string v1, "CscFeature_Contact_EnablePuzzySearch"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "CHNCDMA"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "CscFeature_Contact_EnablePuzzySearch"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "CHNGSM"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSupportFuzzySearch:Z

    .line 162
    const-string v1, "CscFeature_Contact_EnableMultiplePinyinSearch"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSupportMultiPinyinSearch:Z

    .line 165
    const-string v1, "CscFeature_Contact_DoNotSaveEcc"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotSaveEmergencyNumber:Z

    .line 168
    const-string v1, "CscFeature_Contact_DoNotSaveOtaSpNumber"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotSaveOTASPNumber:Z

    .line 171
    const-string v1, "CscFeature_Contact_EnableMenuMDN"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContacts:Z

    .line 174
    const-string v1, "CscFeature_Contact_EnableIconTextOnActionBar"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mShowIconWithTextOnActionBar:Z

    .line 179
    const-string v1, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ro.build.scafe"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "latte"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    :goto_1
    sput-boolean v3, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSetTitleOnActionBar:Z

    .line 184
    sget-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContacts:Z

    if-eqz v1, :cond_2

    :cond_2
    sput-boolean v2, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContactsForCG:Z

    .line 187
    sget-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContacts:Z

    if-eqz v1, :cond_3

    :cond_3
    sput-boolean v2, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContactsForGG:Z

    .line 189
    const-string v1, "CscFeature_Contact_EnableYellowPageFor"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHINA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableYellowPageForChina:Z

    .line 193
    const-string v1, "ReadOnly"

    const-string v2, "CscFeature_Contact_SetPropertyForPreloadedContact"

    invoke-virtual {v0, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    sput-boolean v1, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnablePhoneReadOnlyAccountType:Z

    .line 196
    return-void

    :cond_4
    move v1, v2

    .line 158
    goto :goto_0

    :cond_5
    move v3, v2

    .line 179
    goto :goto_1
.end method


# virtual methods
.method public getAnrConfigValue()I
    .locals 2

    .prologue
    .line 71
    const-string v0, "2"

    invoke-direct {p0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSimType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_ANRConfig"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 75
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnrConfigValue(I)I
    .locals 3
    .param p1, "simCardId"    # I

    .prologue
    const/4 v0, 0x0

    .line 200
    if-nez p1, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v0

    .line 211
    :cond_0
    :goto_0
    return v0

    .line 203
    :cond_1
    const-string v1, "2"

    invoke-direct {p0, p1}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSimType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method public getEnableChineseYellowPage()Z
    .locals 1

    .prologue
    .line 149
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableYellowPageForChina:Z

    return v0
.end method

.method public getEnableDualStandbyContacts()Z
    .locals 1

    .prologue
    .line 137
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContacts:Z

    return v0
.end method

.method public getEnableDualStandbyContactsForCG()Z
    .locals 1

    .prologue
    .line 141
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContactsForCG:Z

    return v0
.end method

.method public getEnableDualStandbyContactsForGG()Z
    .locals 1

    .prologue
    .line 145
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableDualStandbyContactsForGG:Z

    return v0
.end method

.method public getEnablePhoneReadOnlyAccountType()Z
    .locals 1

    .prologue
    .line 153
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnablePhoneReadOnlyAccountType:Z

    return v0
.end method

.method public getEnablePinyinHighlight()Z
    .locals 1

    .prologue
    .line 117
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSupportFuzzySearch:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSupportMultiPinyinSearch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getEnableRadioType()Z
    .locals 3

    .prologue
    .line 223
    const-string v0, "RadioType"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ConfigTelNumType"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x1

    .line 226
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSetTitleOnActionBar()Z
    .locals 1

    .prologue
    .line 121
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mEnableSetTitleOnActionBar:Z

    return v0
.end method

.method public getShowIconWithTextOnActionBar()Z
    .locals 1

    .prologue
    .line 125
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mShowIconWithTextOnActionBar:Z

    return v0
.end method

.method public isChineseLunarCalendar()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 97
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "CHINA"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 110
    :cond_0
    :goto_0
    return v0

    .line 100
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HKTW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "HONGKONG"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 106
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Calendar_EnableLocalHolidayDisplay"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAIWAN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 110
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotAllowedToSaveEmergencyNumber()Z
    .locals 1

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotSaveEmergencyNumber:Z

    return v0
.end method

.method public isNotAllowedToSaveOTASPNumber()Z
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/contacts/util/LoadCscFeatureUtils;->mDoNotSaveOTASPNumber:Z

    return v0
.end method

.method public isSimDbSupport()Z
    .locals 3

    .prologue
    .line 83
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_DisableSIMContacts"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 86
    .local v0, "isSimDbDisabled":Z
    if-nez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
