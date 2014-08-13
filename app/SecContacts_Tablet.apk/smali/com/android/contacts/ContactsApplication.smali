.class public final Lcom/android/contacts/ContactsApplication;
.super Landroid/app/Application;
.source "ContactsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ContactsApplication$Knox;
    }
.end annotation


# static fields
.field private static final TAG_CONTACTS_TG:Ljava/lang/String; = "EAB-CONTACTS_TG"

.field public static TAG_IMS_FEATURE_ENABLED:Z

.field private static sInjectedServices:Lcom/android/contacts/test/InjectedServices;

.field static sThis:Lcom/android/contacts/ContactsApplication;


# instance fields
.field private mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/ContactsApplication;->TAG_IMS_FEATURE_ENABLED:Z

    .line 221
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/ContactsApplication;->sThis:Lcom/android/contacts/ContactsApplication;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 64
    return-void
.end method

.method public static getInjectedServices()Lcom/android/contacts/test/InjectedServices;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    return-object v0
.end method

.method public static getInstance()Lcom/android/contacts/ContactsApplication;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lcom/android/contacts/ContactsApplication;->sThis:Lcom/android/contacts/ContactsApplication;

    return-object v0
.end method

.method public static injectServices(Lcom/android/contacts/test/InjectedServices;)V
    .locals 0
    .param p0, "services"    # Lcom/android/contacts/test/InjectedServices;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 84
    sput-object p0, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    .line 85
    return-void
.end method

.method private setupEab()V
    .locals 1

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/contacts/ContactsApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/contacts/ContactsApplication;->setupRequiredSystemSettings(Landroid/content/ContentResolver;)V

    .line 217
    invoke-static {}, Lcom/sec/android/app/contacts/eab/EABContactsDaemon;->getInstance()Lcom/sec/android/app/contacts/eab/EABContactsDaemon;

    .line 218
    return-void
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 2

    .prologue
    .line 93
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 94
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 95
    .local v0, "resolver":Landroid/content/ContentResolver;
    if-eqz v0, :cond_0

    .line 99
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    goto :goto_0
.end method

.method public getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "mode"    # I

    .prologue
    .line 104
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 105
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1}, Lcom/android/contacts/test/InjectedServices;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 106
    .local v0, "prefs":Landroid/content/SharedPreferences;
    if-eqz v0, :cond_0

    .line 111
    .end local v0    # "prefs":Landroid/content/SharedPreferences;
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    if-eqz v1, :cond_0

    .line 117
    sget-object v1, Lcom/android/contacts/ContactsApplication;->sInjectedServices:Lcom/android/contacts/test/InjectedServices;

    invoke-virtual {v1, p1}, Lcom/android/contacts/test/InjectedServices;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 118
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 138
    .end local v0    # "service":Ljava/lang/Object;
    :goto_0
    return-object v0

    .line 123
    :cond_0
    const-string v1, "contactAccountTypes"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 124
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    if-nez v1, :cond_1

    .line 125
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->createAccountTypeManager(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mAccountTypeManager:Lcom/android/contacts/model/AccountTypeManager;

    goto :goto_0

    .line 130
    :cond_2
    const-string v1, "contactPhotos"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 131
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    if-nez v1, :cond_3

    .line 132
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->createContactPhotoManager(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 133
    iget-object v1, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    invoke-virtual {v1}, Lcom/android/contacts/ContactPhotoManager;->preloadPhotosInBackground()V

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/ContactsApplication;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    goto :goto_0

    .line 138
    :cond_4
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    .line 143
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 145
    const-string v4, "ContactsPerf"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 146
    const-string v4, "ContactsPerf"

    const-string v5, "ContactsApplication.onCreate start"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_0
    const-string v4, "persona"

    invoke-virtual {p0, v4}, Lcom/android/contacts/ContactsApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PersonaManager;

    .line 150
    .local v1, "person":Landroid/os/PersonaManager;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 151
    .local v2, "personID":I
    invoke-virtual {v1, v2}, Landroid/os/PersonaManager;->getPersonaInfo(I)Landroid/content/pm/PersonaInfo;

    move-result-object v3

    .line 152
    .local v3, "personInfo":Landroid/content/pm/PersonaInfo;
    const/16 v4, 0x64

    if-lt v2, v4, :cond_5

    const/4 v4, 0x1

    :goto_0
    sput-boolean v4, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    .line 153
    sget-boolean v4, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    .line 154
    const-string v4, "KNOX"

    iget-object v5, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/contacts/ContactsApplication$Knox$MODE;->KNOX1:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    :goto_1
    sput-object v4, Lcom/android/contacts/ContactsApplication$Knox;->which:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    .line 160
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 161
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 162
    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    .line 164
    const-string v4, "ContactsStrictMode"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 165
    new-instance v4, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v4

    invoke-static {v4}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 174
    :cond_2
    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimSupport()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 175
    const-string v4, "ContactsPerf"

    const-string v5, "ContactsApplication send broadcast msg to checking sim db "

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.SIM_DB_INIT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 177
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContacts()Z

    move-result v4

    if-nez v4, :cond_7

    .line 184
    :cond_3
    :goto_2
    const-string v4, "ContactsPerf"

    invoke-static {v4, v6}, Landroid/util/secutil/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 185
    const-string v4, "ContactsPerf"

    const-string v5, "ContactsApplication.onCreate finish"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_4
    sput-object p0, Lcom/android/contacts/ContactsApplication;->sThis:Lcom/android/contacts/ContactsApplication;

    .line 207
    const-string v4, "ContactsApplication"

    const-string v5, "CscFeatureTagIMS.TAG_CSCFEATURE_IMS_ENABLEVOLTE is Disabled"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void

    .line 152
    .end local v0    # "context":Landroid/content/Context;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 154
    :cond_6
    sget-object v4, Lcom/android/contacts/ContactsApplication$Knox$MODE;->KNOX2:Lcom/android/contacts/ContactsApplication$Knox$MODE;

    goto :goto_1

    .line 180
    .restart local v0    # "context":Landroid/content/Context;
    :cond_7
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.samsung.intent.action.SIM2_DB_INIT"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method

.method public resetPublishParameters()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 356
    const-string v2, "EAB-CONTACTS_TG"

    const-string v3, "resetPublishParameters Called"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 359
    .local v1, "pref":Landroid/content/SharedPreferences;
    const-string v2, "vops_indication"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 361
    .local v0, "initial_publish":I
    const-string v2, "EAB-CONTACTS_TG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetPublishParameters VOPS_INDICATION : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    if-eq v0, v5, :cond_0

    if-ltz v0, :cond_1

    .line 366
    :cond_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "vops_indication"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 369
    :cond_1
    const-string v2, "network_type"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 371
    const-string v2, "EAB-CONTACTS_TG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetPublishParameters NETWORK_TYPE : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-eq v0, v5, :cond_2

    if-ltz v0, :cond_3

    .line 376
    :cond_2
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "network_type"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 379
    :cond_3
    const-string v2, "lvc_on_off"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 381
    const-string v2, "EAB-CONTACTS_TG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetPublishParameters LVC_ON_OFF : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    if-eq v0, v5, :cond_4

    if-ltz v0, :cond_5

    .line 386
    :cond_4
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "lvc_on_off"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 389
    :cond_5
    const-string v2, "volte_on_off"

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 391
    const-string v2, "EAB-CONTACTS_TG"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "resetPublishParameters VOLTE_ON_OFF : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-eq v0, v5, :cond_6

    if-ltz v0, :cond_7

    .line 396
    :cond_6
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "volte_on_off"

    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 400
    :cond_7
    return-void
.end method

.method public setupRequiredSystemSettings(Landroid/content/ContentResolver;)V
    .locals 20
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ContactsApplication;->resetPublishParameters()V

    .line 229
    const-string v17, "EAB-CONTACTS_TG"

    const-string v18, "setupRequiredSystemSettings start"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 231
    .local v12, "pref":Landroid/content/SharedPreferences;
    const-string v17, "initial_publish_404"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 233
    .local v7, "initial_publish":I
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_0

    if-lez v7, :cond_1

    .line 236
    :cond_0
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "initial_publish_404"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 239
    :cond_1
    const-string v17, "initial_publish_403"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 242
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_2

    if-lez v7, :cond_3

    .line 245
    :cond_2
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "initial_publish_403"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 248
    :cond_3
    const-string v17, "retry_exponential_back_off"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 251
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_4

    if-lez v7, :cond_5

    .line 254
    :cond_4
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "retry_exponential_back_off"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    :cond_5
    const-string v17, "initial_publish_413"

    const/16 v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    .line 260
    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_6

    if-lez v7, :cond_7

    .line 263
    :cond_6
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    const-string v18, "initial_publish_413"

    const/16 v19, 0x0

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 265
    :cond_7
    const-string v17, "sipuriprefix"

    const-string v18, "sipuriprefix"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 266
    .local v14, "uriPrefix":Ljava/lang/String;
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 267
    :cond_8
    const-string v17, "sipuriprefix"

    const-string v18, "sipuriprefix"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-string v17, "EAB-CONTACTS_TG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not setting the SMS_SIP_SIPURI_PREFIX - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :goto_0
    const-string v17, "HomeDomainName"

    const-string v18, "HomeDomainName"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 274
    .local v10, "mDomainName":Ljava/lang/String;
    if-eqz v10, :cond_9

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_15

    .line 275
    :cond_9
    const-string v17, "HomeDomainName"

    const-string v18, "HomeDomainName"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_1
    const-string v17, "uritype"

    const-string v18, "uritype"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 281
    .local v15, "uritype":Ljava/lang/String;
    if-eqz v15, :cond_a

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_16

    .line 282
    :cond_a
    const-string v17, "uritype"

    const-string v18, "uritype"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :goto_2
    const-string v17, "VoLTEBetaEnabled"

    const-string v18, "VoLTEBetaEnabled"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 288
    .local v16, "volteEnabled":Ljava/lang/String;
    if-eqz v16, :cond_b

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_17

    .line 289
    :cond_b
    const-string v17, "VoLTEBetaEnabled"

    const-string v18, "VoLTEBetaEnabled"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :goto_3
    const-string v17, "Capability_Discovery"

    const-string v18, "Capability_Discovery"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 295
    .local v5, "capabilityDiscovery":Ljava/lang/String;
    if-eqz v5, :cond_c

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_18

    .line 296
    :cond_c
    const-string v17, "Capability_Discovery"

    const-string v18, "Capability_Discovery"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :goto_4
    const-string v17, "Capability_Poll_Interval"

    const-string v18, "Capability_Poll_Interval"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 302
    .local v6, "capabilityPollInterval":Ljava/lang/String;
    if-eqz v6, :cond_d

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_d

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_19

    .line 303
    :cond_d
    const-string v17, "Capability_Poll_Interval"

    const-string v18, "Capability_Poll_Interval"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_5
    const-string v17, "CapCacheExp"

    const-string v18, "CapCacheExp"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 309
    .local v4, "capabilityCacheExpiry":Ljava/lang/String;
    if-eqz v4, :cond_e

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_e

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1a

    .line 310
    :cond_e
    const-string v17, "CapCacheExp"

    const-string v18, "CapCacheExp"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :goto_6
    const-string v17, "AvailCacheExp"

    const-string v18, "AvailCacheExp"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    .local v3, "availabilityCacheExpiry":Ljava/lang/String;
    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_f

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1b

    .line 317
    :cond_f
    const-string v17, "AvailCacheExp"

    const-string v18, "AvailCacheExp"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_7
    const-string v17, "Source_Throttle_Publish"

    const-string v18, "Source_Throttle_Publish"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 323
    .local v13, "sourceThrottlePublishVal":Ljava/lang/String;
    if-eqz v13, :cond_10

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_10

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1c

    .line 324
    :cond_10
    const-string v17, "Source_Throttle_Publish"

    const-string v18, "Source_Throttle_Publish"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :goto_8
    const-string v17, "Max_Number_Of_Entries"

    const-string v18, "Max_Number_Of_Entries"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 330
    .local v11, "maxEntries":Ljava/lang/String;
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_11

    const-string v17, "0"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1d

    .line 331
    :cond_11
    const-string v17, "Max_Number_Of_Entries"

    const-string v18, "Max_Number_Of_Entries"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    :goto_9
    const-string v17, "LVCBetaEnabled"

    const-string v18, "LVCBetaEnabled"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 338
    .local v9, "lvcSetting":Ljava/lang/String;
    if-eqz v9, :cond_12

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1e

    .line 339
    :cond_12
    const-string v17, "LVCBetaEnabled"

    const-string v18, "LVCBetaEnabled"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :goto_a
    const-string v17, "LstSubscribeTime"

    const-string v18, "LstSubscribeTime"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->readFromSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 346
    .local v8, "lastSentSubscribeTime":Ljava/lang/String;
    if-eqz v8, :cond_13

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_1f

    .line 347
    :cond_13
    const-string v17, "LstSubscribeTime"

    const-string v18, "LstSubscribeTime"

    invoke-static/range {v18 .. v18}, Lcom/sec/android/app/contacts/util/ContactsUtil;->getDefaultPSTvalues(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :goto_b
    const-string v17, "EAB-CONTACTS_TG"

    const-string v18, "setupRequiredSystemSettings END"

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void

    .line 270
    .end local v3    # "availabilityCacheExpiry":Ljava/lang/String;
    .end local v4    # "capabilityCacheExpiry":Ljava/lang/String;
    .end local v5    # "capabilityDiscovery":Ljava/lang/String;
    .end local v6    # "capabilityPollInterval":Ljava/lang/String;
    .end local v8    # "lastSentSubscribeTime":Ljava/lang/String;
    .end local v9    # "lvcSetting":Ljava/lang/String;
    .end local v10    # "mDomainName":Ljava/lang/String;
    .end local v11    # "maxEntries":Ljava/lang/String;
    .end local v13    # "sourceThrottlePublishVal":Ljava/lang/String;
    .end local v15    # "uritype":Ljava/lang/String;
    .end local v16    # "volteEnabled":Ljava/lang/String;
    :cond_14
    const-string v17, "EAB-CONTACTS_TG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not setting the SMS_SIP_SIPURI_PREFIX - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 277
    .restart local v10    # "mDomainName":Ljava/lang/String;
    :cond_15
    const-string v17, "EAB-CONTACTS_TG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not setting the SMS_HOME_DOMAIN_NAME - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 284
    .restart local v15    # "uritype":Ljava/lang/String;
    :cond_16
    const-string v17, "EAB-CONTACTS_TG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not setting the SMS_SIP_URI_TYPE - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 291
    .restart local v16    # "volteEnabled":Ljava/lang/String;
    :cond_17
    const-string v17, "EAB-CONTACTS_TG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not setting the VoLTE_BETA_ENABLED - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 298
    .restart local v5    # "capabilityDiscovery":Ljava/lang/String;
    :cond_18
    const-string v17, "EAB-CONTACTS_TG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not setting the CAPABILITY_DISCOVERY - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 305
    .restart local v6    # "capabilityPollInterval":Ljava/lang/String;
    :cond_19
    const-string v17, "EAB-CONTACTS_TG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not setting the CAPABILITY_POLL_INTERVAL - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 312
    .restart local v4    # "capabilityCacheExpiry":Ljava/lang/String;
    :cond_1a
    const-string v17, "EAB-CONTACTS_TG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not setting the CAPABILITY_CACHE_EXPIRATION - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 319
    .restart local v3    # "availabilityCacheExpiry":Ljava/lang/String;
    :cond_1b
    const-string v17, "EAB-CONTACTS_TG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not setting the AVAILIBILITY_CACHE_EXPIRATION - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 326
    .restart local v13    # "sourceThrottlePublishVal":Ljava/lang/String;
    :cond_1c
    const-string v17, "EAB-CONTACTS_TG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not setting the SOURCE_THROTTLE_PUBLISH - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 333
    .restart local v11    # "maxEntries":Ljava/lang/String;
    :cond_1d
    const-string v17, "EAB-CONTACTS_TG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not setting the MAX_NUMBER_OF_ENTRIES - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 341
    .restart local v9    # "lvcSetting":Ljava/lang/String;
    :cond_1e
    const-string v17, "EAB-CONTACTS_TG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not setting the LVC_BETA_ENABLED - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 349
    .restart local v8    # "lastSentSubscribeTime":Ljava/lang/String;
    :cond_1f
    const-string v17, "EAB-CONTACTS_TG"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "not setting the CAPABILITY_DISCOVERY - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b
.end method
