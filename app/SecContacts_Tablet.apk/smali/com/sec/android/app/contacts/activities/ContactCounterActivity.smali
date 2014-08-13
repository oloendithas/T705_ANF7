.class public Lcom/sec/android/app/contacts/activities/ContactCounterActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ContactCounterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/ContactCounterActivity$1;,
        Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterAdapter;,
        Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;,
        Lcom/sec/android/app/contacts/activities/ContactCounterActivity$MyLoaderCallbacks;,
        Lcom/sec/android/app/contacts/activities/ContactCounterActivity$ContactCounterLoader;
    }
.end annotation


# static fields
.field private static final CONTACTS_PROJECTION_COUNT:[Ljava/lang/String;

.field private static final CONTACT_COUNTER_LOADER_ID:I = 0x0

.field private static final SIM_ONE:I = 0x1

.field private static final SIM_ZERO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ContactCounterActivity"

.field private static sIsTwoPaneMode:Z


# instance fields
.field private mDoneButton:Landroid/widget/Button;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "link_type1"

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->CONTACTS_PROJECTION_COUNT:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 351
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {p0}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->loadAccounts(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/ContactCounterActivity;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/ContactCounterActivity;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private static getAccountCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 265
    const/4 v7, 0x0

    .line 266
    .local v7, "count":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->CONTACTS_PROJECTION_COUNT:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "link_type1=\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " OR (link_accounts LIKE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'%|"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%\' OR link_accounts LIKE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'%"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "|%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND link_count > 1)"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 271
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 272
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 273
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_0
    return v7
.end method

.method private static getAccountName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "accountLabel"    # Ljava/lang/String;

    .prologue
    .line 232
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    .line 233
    .local v0, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const-string v1, "vnd.sec.contact.sim"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    const v1, 0x7f0e0282

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 259
    .end local p2    # "accountLabel":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p2

    .line 245
    .restart local p2    # "accountLabel":Ljava/lang/String;
    :cond_1
    const v1, 0x7f0e0281

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method private static getSimMaxCount(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "accountType"    # Ljava/lang/String;

    .prologue
    .line 279
    invoke-static {p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v1

    .line 280
    .local v1, "manageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    const/4 v2, 0x0

    .line 293
    .local v2, "simMaxCount":I
    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimFull(Ljava/lang/String;)Z

    move-result v0

    .line 294
    .local v0, "isSimFull":Z
    const-string v3, "ContactCounterActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimMaxCount  isSimFull "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {v1, p1}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getMaxCount(Ljava/lang/String;)I

    move-result v2

    .line 297
    return v2
.end method

.method private static loadAccounts(Landroid/content/Context;)Ljava/util/List;
    .locals 23
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v15

    .line 143
    .local v15, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;>;"
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 145
    .local v4, "accountFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;>;"
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v6

    .line 146
    .local v6, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v14

    .line 147
    .local v14, "phoneBookManageSim":Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;
    invoke-static/range {p0 .. p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v12

    .line 148
    .local v12, "isKnoxMode":Z
    const/16 v17, 0x0

    .line 149
    .local v17, "totalCount":I
    const/16 v16, 0x0

    .line 150
    .local v16, "simMaxCount":I
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v6, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v7

    .line 151
    .local v7, "accounts":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/model/AccountWithDataSet;

    .line 152
    .local v3, "account":Lcom/android/contacts/model/AccountWithDataSet;
    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    iget-object v0, v3, Lcom/android/contacts/model/AccountWithDataSet;->dataSet:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v5

    .line 153
    .local v5, "accountType":Lcom/android/contacts/model/AccountType;
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/android/contacts/model/AccountType;->isExtension()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/contacts/model/AccountWithDataSet;->hasData(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 158
    :cond_1
    const-string v18, "vnd.sec.contact.sim"

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v14}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->hasIccCard()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 162
    :cond_2
    const-string v18, "vnd.sec.contact.sim"

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    const-string v18, "vnd.sec.contact.sim"

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 166
    :cond_3
    const-string v18, "vnd.sec.contact.phone_knox"

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_4

    if-eqz v12, :cond_0

    .line 170
    :cond_4
    const-string v18, "vnd.sec.contact.phone_knox2"

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    if-eqz v12, :cond_0

    .line 175
    :cond_5
    const-string v18, "vnd.sec.contact.sim"

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_6

    if-nez v12, :cond_0

    .line 179
    :cond_6
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v18

    const-string v19, "CscFeature_Common_MyPhonebookBrandName"

    invoke-virtual/range {v18 .. v19}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const-string v19, ""

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 181
    const-string v18, "com.android.tmo_myphonebook"

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 201
    :cond_7
    const-string v18, "com.coolots.chaton"

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_0

    .line 204
    const-string v18, "vnd.sec.contact.sim"

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    const-string v18, "vnd.sec.contact.sim2"

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 205
    :cond_8
    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->getSimMaxCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v16

    .line 208
    :cond_9
    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 209
    .local v13, "name":Ljava/lang/String;
    :goto_1
    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_d

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->getAccountCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    .line 210
    .local v9, "count":I
    :goto_2
    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 211
    .local v11, "icon":Landroid/graphics/drawable/Drawable;
    :goto_3
    if-eqz v12, :cond_a

    const-string v18, "vnd.sec.contact.phone_personal"

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_a

    .line 212
    const v18, 0x7f0e0130

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 213
    :cond_a
    if-lez v16, :cond_f

    const-string v18, "vnd.sec.contact.sim"

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_b

    const-string v18, "vnd.sec.contact.sim2"

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 214
    :cond_b
    new-instance v18, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->getAccountName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " / "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v11}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    :goto_4
    add-int v17, v17, v9

    .line 219
    goto/16 :goto_0

    .line 208
    .end local v9    # "count":I
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "name":Ljava/lang/String;
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_1

    .line 209
    .restart local v13    # "name":Ljava/lang/String;
    :cond_d
    const/4 v9, 0x0

    goto :goto_2

    .line 210
    .restart local v9    # "count":I
    :cond_e
    const/4 v11, 0x0

    goto :goto_3

    .line 216
    .restart local v11    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_f
    new-instance v18, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;

    iget-object v0, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v1, v13}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->getAccountName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v11}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 221
    .end local v3    # "account":Lcom/android/contacts/model/AccountWithDataSet;
    .end local v5    # "accountType":Lcom/android/contacts/model/AccountType;
    .end local v9    # "count":I
    .end local v11    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v13    # "name":Ljava/lang/String;
    :cond_10
    new-instance v18, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;

    const v19, 0x7f0e0119

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7f02069d

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    invoke-direct/range {v18 .. v21}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$CustomRow;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 224
    .local v8, "cnt":I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-lt v8, v0, :cond_11

    .line 226
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 228
    :cond_11
    return-object v15
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 418
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 425
    :goto_0
    return-void

    .line 420
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x7f090128
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 89
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v1, 0x7f04003e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 92
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isFonbletLandscape(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->sIsTwoPaneMode:Z

    .line 93
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->mListView:Landroid/widget/ListView;

    .line 94
    sget-boolean v1, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->sIsTwoPaneMode:Z

    if-eqz v1, :cond_0

    .line 95
    const v1, 0x7f090128

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->mDoneButton:Landroid/widget/Button;

    .line 96
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->mDoneButton:Landroid/widget/Button;

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/ContactCounterActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 101
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 105
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$MyLoaderCallbacks;

    invoke-direct {v2, p0, v4}, Lcom/sec/android/app/contacts/activities/ContactCounterActivity$MyLoaderCallbacks;-><init>(Lcom/sec/android/app/contacts/activities/ContactCounterActivity;Lcom/sec/android/app/contacts/activities/ContactCounterActivity$1;)V

    invoke-virtual {v1, v3, v4, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 106
    return-void

    .end local v0    # "actionBar":Landroid/app/ActionBar;
    :cond_2
    move v1, v3

    .line 92
    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/contacts/ContactsActivity;->onDestroy()V

    .line 110
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 404
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 414
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 409
    :pswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 410
    const/4 v0, 0x1

    goto :goto_0

    .line 404
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
