.class public Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;
.super Landroid/content/AsyncTaskLoader;
.source "CustomContactListFilterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/list/CustomContactListFilterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomFilterConfigurationLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/AsyncTaskLoader",
        "<",
        "Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;",
        ">;"
    }
.end annotation


# instance fields
.field private mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 196
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 197
    return-void
.end method


# virtual methods
.method public deliverResult(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V
    .locals 1
    .param p1, "cursor"    # Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .prologue
    .line 302
    invoke-virtual {p0}, Landroid/content/Loader;->isReset()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 311
    :cond_0
    :goto_0
    return-void

    .line 306
    :cond_1
    iput-object p1, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .line 308
    invoke-virtual {p0}, Landroid/content/Loader;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-super {p0, p1}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 191
    check-cast p1, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->deliverResult(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    return-void
.end method

.method public loadInBackground()Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    .locals 22

    .prologue
    .line 201
    invoke-virtual/range {p0 .. p0}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 202
    .local v12, "context":Landroid/content/Context;
    invoke-static {v12}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v10

    .line 203
    .local v10, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 205
    .local v1, "resolver":Landroid/content/ContentResolver;
    new-instance v11, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-direct {v11}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;-><init>()V

    .line 206
    .local v11, "accounts":Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/AccountWithDataSet;

    .line 207
    .local v7, "account":Lcom/android/contacts/model/AccountWithDataSet;
    invoke-virtual {v10, v7}, Lcom/android/contacts/model/AccountTypeManager;->getAccountTypeForAccount(Lcom/android/contacts/model/AccountWithDataSet;)Lcom/android/contacts/model/AccountType;

    move-result-object v9

    .line 209
    .local v9, "accountType":Lcom/android/contacts/model/AccountType;
    iget-object v2, v7, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    const-string v3, "preload"

    if-eq v2, v3, :cond_0

    .line 212
    invoke-virtual {v9}, Lcom/android/contacts/model/AccountType;->isExtension()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v7, v12}, Lcom/android/contacts/model/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    :cond_1
    const-string v2, "vnd.sec.contact.sim"

    iget-object v3, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v12}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v12}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    :cond_2
    iget-object v2, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "vnd.sec.contact.phone_knox"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    if-nez v2, :cond_3

    .line 221
    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 222
    .local v19, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "2wayflag"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    .end local v19    # "prefs":Landroid/content/SharedPreferences;
    :cond_3
    iget-object v2, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "vnd.sec.contact.phone_knox2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v2, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    if-nez v2, :cond_4

    .line 226
    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 227
    .restart local v19    # "prefs":Landroid/content/SharedPreferences;
    const-string v2, "2wayflag2"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 244
    .end local v19    # "prefs":Landroid/content/SharedPreferences;
    :cond_4
    const-string v2, "vnd.sec.contact.phone_personal"

    iget-object v3, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/android/contacts/ContactsApplication$Knox;->isKnox:Z

    if-eqz v2, :cond_5

    .line 245
    invoke-static {v12}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 246
    .restart local v19    # "prefs":Landroid/content/SharedPreferences;
    const-string v2, "device_personal"

    const/4 v3, 0x0

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 247
    .local v13, "device_personal":Z
    const-string v2, "CustomContactListFilterActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[CustomFilterConfigurationLoader] device_personal : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    if-eqz v13, :cond_0

    .line 254
    .end local v13    # "device_personal":Z
    .end local v19    # "prefs":Landroid/content/SharedPreferences;
    :cond_5
    iget-object v2, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v3, "com.coolots.chaton"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    new-instance v8, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;

    iget-object v2, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-direct {v8, v1, v2, v3, v4}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .local v8, "accountDisplay":Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    sget-object v2, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_name"

    iget-object v4, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "account_type"

    iget-object v4, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v15

    .line 263
    .local v15, "groupsUri":Landroid/net/Uri$Builder;
    iget-object v2, v7, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 264
    const-string v2, "data_set"

    iget-object v3, v7, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    invoke-virtual {v15, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 266
    :cond_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "title"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ICE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 268
    .local v20, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v12}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/ContactsContract$Groups;->newEntityIterator(Landroid/database/Cursor;)Landroid/content/EntityIterator;

    move-result-object v18

    .line 272
    .local v18, "iterator":Landroid/content/EntityIterator;
    const/16 v16, 0x0

    .line 275
    .local v16, "hasGroups":Z
    :goto_2
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 276
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Entity;

    invoke-virtual {v2}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v21

    .line 277
    .local v21, "values":Landroid/content/ContentValues;
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromBefore(Landroid/content/ContentValues;)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v14

    .line 280
    .local v14, "group":Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    iget-object v2, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    # invokes: Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->addGroup(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Ljava/lang/String;)V
    invoke-static {v8, v14, v2}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->access$000(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Ljava/lang/String;)V

    .line 281
    const/16 v16, 0x1

    .line 282
    goto :goto_2

    .line 268
    .end local v14    # "group":Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;
    .end local v16    # "hasGroups":Z
    .end local v18    # "iterator":Landroid/content/EntityIterator;
    .end local v21    # "values":Landroid/content/ContentValues;
    :cond_7
    const/4 v4, 0x0

    goto :goto_1

    .line 284
    .restart local v16    # "hasGroups":Z
    .restart local v18    # "iterator":Landroid/content/EntityIterator;
    :cond_8
    iget-object v2, v7, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v3, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move/from16 v0, v16

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;->fromSettings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    move-result-object v2

    iput-object v2, v8, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    .line 289
    iget-object v2, v8, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->mUngrouped:Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;

    iget-object v3, v7, Landroid/accounts/Account;->type:Ljava/lang/String;

    # invokes: Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->addGroup(Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Ljava/lang/String;)V
    invoke-static {v8, v2, v3}, Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;->access$000(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;Lcom/android/contacts/list/CustomContactListFilterActivity$GroupDelta;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->close()V

    .line 294
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 291
    :catchall_0
    move-exception v2

    invoke-interface/range {v18 .. v18}, Landroid/content/EntityIterator;->close()V

    throw v2

    .line 297
    .end local v7    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v8    # "accountDisplay":Lcom/android/contacts/list/CustomContactListFilterActivity$AccountDisplay;
    .end local v9    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v15    # "groupsUri":Landroid/net/Uri$Builder;
    .end local v16    # "hasGroups":Z
    .end local v18    # "iterator":Landroid/content/EntityIterator;
    .end local v20    # "sb":Ljava/lang/StringBuilder;
    :cond_9
    return-object v11
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->loadInBackground()Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 338
    invoke-super {p0}, Landroid/content/Loader;->onReset()V

    .line 339
    invoke-virtual {p0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->onStopLoading()V

    .line 340
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    .line 341
    return-void
.end method

.method protected onStartLoading()V
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    invoke-virtual {p0, v0}, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->deliverResult(Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;)V

    .line 318
    :cond_0
    invoke-virtual {p0}, Landroid/content/Loader;->takeContentChanged()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/contacts/list/CustomContactListFilterActivity$CustomFilterConfigurationLoader;->mAccountSet:Lcom/android/contacts/list/CustomContactListFilterActivity$AccountSet;

    if-nez v0, :cond_2

    .line 319
    :cond_1
    invoke-virtual {p0}, Landroid/content/Loader;->forceLoad()V

    .line 329
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 333
    invoke-virtual {p0}, Landroid/content/Loader;->cancelLoad()Z

    .line 334
    return-void
.end method
