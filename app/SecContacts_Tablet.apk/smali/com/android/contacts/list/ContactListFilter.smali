.class public final Lcom/android/contacts/list/ContactListFilter;
.super Ljava/lang/Object;
.source "ContactListFilter.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/contacts/list/ContactListFilter;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/contacts/list/ContactListFilter;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_TYPE_ACCOUNT:I = 0x0

.field public static final FILTER_TYPE_ALL_ACCOUNTS:I = -0x2

.field public static final FILTER_TYPE_CUSTOM:I = -0x3

.field public static final FILTER_TYPE_DEFAULT:I = -0x1

.field public static final FILTER_TYPE_FAVORITE_WITH_EMAILS:I = -0xa

.field public static final FILTER_TYPE_FAVORITE_WITH_PHONES_EMAILS:I = -0x9

.field public static final FILTER_TYPE_FOR_MOVE_TO_KNOX:I = -0x11

.field public static final FILTER_TYPE_GROUP:I = 0x1

.field public static final FILTER_TYPE_LOGS:I = -0xc

.field public static final FILTER_TYPE_SIM2_CONTACT:I = -0x10

.field public static final FILTER_TYPE_SIM_CONTACT:I = -0xb

.field public static final FILTER_TYPE_SINGLE_CONTACT:I = -0x6

.field public static final FILTER_TYPE_STARRED:I = -0x4

.field public static final FILTER_TYPE_WITHOUT_STARS:I = -0xd

.field public static final FILTER_TYPE_WITHOUT_STARS_WITH_PHONENUMBER:I = -0xf

.field public static final FILTER_TYPE_WITH_EMAILS:I = -0x8

.field public static final FILTER_TYPE_WITH_PHONES_EMAILS:I = -0x7

.field public static final FILTER_TYPE_WITH_PHONE_NUMBERS_ONLY:I = -0x5

.field public static final FILTER_TYPE_WITH_STREQUENT:I = -0xe

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "filter.accountName"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "filter.accountType"

.field private static final KEY_DATA_SET:Ljava/lang/String; = "filter.dataSet"

.field private static final KEY_FILTER_TYPE:Ljava/lang/String; = "filter.type"

.field private static final KEY_GROUP_ID:Ljava/lang/String; = "filter.groupId"

.field private static final KEY_GROUP_READ_ONLY:Ljava/lang/String; = "filter.groupReadOnly"

.field private static final KEY_GROUP_SOURCE_ID:Ljava/lang/String; = "filter.groupSourceId"

.field private static final KEY_GROUP_TITLE:Ljava/lang/String; = "filter.groupTitle"


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public dataSet:Ljava/lang/String;

.field public filterType:I

.field public groupId:J

.field public groupReadOnly:Z

.field public groupSourceId:Ljava/lang/String;

.field public groupSystemId:Ljava/lang/String;

.field public icon:Landroid/graphics/drawable/Drawable;

.field private mId:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/android/contacts/list/ContactListFilter$1;

    invoke-direct {v0}, Lcom/android/contacts/list/ContactListFilter$1;-><init>()V

    sput-object v0, Lcom/android/contacts/list/ContactListFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "filterType"    # I

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iput p1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 99
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;ZLjava/lang/String;)V
    .locals 0
    .param p1, "filterType"    # I
    .param p2, "accountType"    # Ljava/lang/String;
    .param p3, "accountName"    # Ljava/lang/String;
    .param p4, "dataSet"    # Ljava/lang/String;
    .param p5, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p6, "groupId"    # J
    .param p8, "groupSourceId"    # Ljava/lang/String;
    .param p9, "groupReadOnly"    # Z
    .param p10, "title"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 86
    iput-object p2, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    .line 88
    iput-object p4, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    .line 89
    iput-object p5, p0, Lcom/android/contacts/list/ContactListFilter;->icon:Landroid/graphics/drawable/Drawable;

    .line 90
    iput-wide p6, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    .line 91
    iput-object p8, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    .line 92
    iput-boolean p9, p0, Lcom/android/contacts/list/ContactListFilter;->groupReadOnly:Z

    .line 93
    iput-object p10, p0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static createAccountFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)Lcom/android/contacts/list/ContactListFilter;
    .locals 11
    .param p0, "accountType"    # Ljava/lang/String;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p4, "title"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 120
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v9, v1

    move-object v10, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/contacts/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;
    .locals 11
    .param p0, "filterType"    # I

    .prologue
    const/4 v2, 0x0

    .line 103
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    const-wide/16 v6, 0x0

    const/4 v9, 0x0

    move v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v8, v2

    move-object v10, v2

    invoke-direct/range {v0 .. v10}, Lcom/android/contacts/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static createGroupFilter(J)Lcom/android/contacts/list/ContactListFilter;
    .locals 11
    .param p0, "groupId"    # J

    .prologue
    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    const/4 v1, 0x1

    const/4 v9, 0x0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-wide v6, p0

    move-object v8, v2

    move-object v10, v2

    invoke-direct/range {v0 .. v10}, Lcom/android/contacts/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static createGroupFilter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLjava/lang/String;)Lcom/android/contacts/list/ContactListFilter;
    .locals 11
    .param p0, "accountType"    # Ljava/lang/String;
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "dataSet"    # Ljava/lang/String;
    .param p3, "groupId"    # J
    .param p5, "groupSourceId"    # Ljava/lang/String;
    .param p6, "groupReadOnly"    # Z
    .param p7, "title"    # Ljava/lang/String;

    .prologue
    .line 114
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    const/4 v1, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v6, p3

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v0 .. v10}, Lcom/android/contacts/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;ZLjava/lang/String;)V

    return-object v0
.end method

.method public static restoreDefaultPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;
    .locals 2
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    .line 240
    invoke-static {p0}, Lcom/android/contacts/list/ContactListFilter;->restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 241
    .local v0, "filter":Lcom/android/contacts/list/ContactListFilter;
    if-nez v0, :cond_0

    .line 242
    const/4 v1, -0x2

    invoke-static {v1}, Lcom/android/contacts/list/ContactListFilter;->createFilterWithType(I)Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 245
    :cond_0
    return-object v0
.end method

.method public static restoreFromPreferences(Landroid/content/SharedPreferences;)Lcom/android/contacts/list/ContactListFilter;
    .locals 13
    .param p0, "prefs"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v11, -0x1

    const/4 v5, 0x0

    .line 249
    const-string v0, "filter.type"

    invoke-interface {p0, v0, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 250
    .local v1, "filterType":I
    if-ne v1, v11, :cond_0

    .line 261
    :goto_0
    return-object v5

    .line 254
    :cond_0
    const-string v0, "filter.accountName"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 255
    .local v3, "accountName":Ljava/lang/String;
    const-string v0, "filter.accountType"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, "accountType":Ljava/lang/String;
    const-string v0, "filter.dataSet"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 257
    .local v4, "dataSet":Ljava/lang/String;
    const-string v0, "filter.groupId"

    const-wide/16 v11, -0x1

    invoke-interface {p0, v0, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 258
    .local v6, "groupId":J
    const-string v0, "filter.groupSourceId"

    invoke-interface {p0, v0, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 259
    .local v8, "groupSourceId":Ljava/lang/String;
    const-string v0, "filter.groupReadOnly"

    const/4 v11, 0x0

    invoke-interface {p0, v0, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 260
    .local v9, "groupReadOnly":Z
    const-string v0, "filter.groupTitle"

    const-string v11, "group"

    invoke-interface {p0, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 261
    .local v10, "title":Ljava/lang/String;
    new-instance v0, Lcom/android/contacts/list/ContactListFilter;

    invoke-direct/range {v0 .. v10}, Lcom/android/contacts/list/ContactListFilter;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;JLjava/lang/String;ZLjava/lang/String;)V

    move-object v5, v0

    goto :goto_0
.end method

.method public static storeToPreferences(Landroid/content/SharedPreferences;Lcom/android/contacts/list/ContactListFilter;)V
    .locals 5
    .param p0, "prefs"    # Landroid/content/SharedPreferences;
    .param p1, "filter"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    const/4 v1, 0x0

    .line 223
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.type"

    if-nez p1, :cond_0

    const/4 v0, -0x1

    :goto_0
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.accountName"

    if-nez p1, :cond_1

    move-object v0, v1

    :goto_1
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.accountType"

    if-nez p1, :cond_2

    move-object v0, v1

    :goto_2
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.dataSet"

    if-nez p1, :cond_3

    move-object v0, v1

    :goto_3
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "filter.groupId"

    if-nez p1, :cond_4

    const-wide/16 v2, -0x1

    :goto_4
    invoke-interface {v0, v4, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.groupSourceId"

    if-nez p1, :cond_5

    move-object v0, v1

    :goto_5
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "filter.groupReadOnly"

    if-nez p1, :cond_6

    const/4 v0, 0x0

    :goto_6
    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "filter.groupTitle"

    if-nez p1, :cond_7

    :goto_7
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 233
    return-void

    .line 223
    :cond_0
    iget v0, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v0, p1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    goto :goto_3

    :cond_4
    iget-wide v2, p1, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    goto :goto_4

    :cond_5
    iget-object v0, p1, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    goto :goto_5

    :cond_6
    iget-boolean v0, p1, Lcom/android/contacts/list/ContactListFilter;->groupReadOnly:Z

    goto :goto_6

    :cond_7
    iget-object v1, p1, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    goto :goto_7
.end method


# virtual methods
.method public addAccountQueryParameterToUrl(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 2
    .param p1, "uriBuilder"    # Landroid/net/Uri$Builder;

    .prologue
    .line 335
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "filterType must be FILTER_TYPE_ACCOUNT"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    :cond_0
    const-string v0, "account_name"

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 339
    const-string v0, "account_type"

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 340
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 341
    const-string v0, "data_set"

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 343
    :cond_1
    return-object p1
.end method

.method public compareTo(Lcom/android/contacts/list/ContactListFilter;)I
    .locals 5
    .param p1, "another"    # Lcom/android/contacts/list/ContactListFilter;

    .prologue
    .line 160
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 161
    .local v0, "res":I
    if-eqz v0, :cond_0

    move v3, v0

    .line 176
    :goto_0
    return v3

    .line 165
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 166
    if-eqz v0, :cond_1

    move v3, v0

    .line 167
    goto :goto_0

    .line 170
    :cond_1
    iget v3, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    iget v4, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eq v3, v4, :cond_2

    .line 171
    iget v3, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    iget v4, p1, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    sub-int/2addr v3, v4

    goto :goto_0

    .line 174
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    .line 175
    .local v1, "title1":Ljava/lang/String;
    :goto_1
    iget-object v3, p1, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v2, p1, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    .line 176
    .local v2, "title2":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    .line 174
    .end local v1    # "title1":Ljava/lang/String;
    .end local v2    # "title2":Ljava/lang/String;
    :cond_3
    const-string v1, ""

    goto :goto_1

    .line 175
    .restart local v1    # "title1":Ljava/lang/String;
    :cond_4
    const-string v2, ""

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 30
    check-cast p1, Lcom/android/contacts/list/ContactListFilter;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/contacts/list/ContactListFilter;->compareTo(Lcom/android/contacts/list/ContactListFilter;)I

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 199
    if-ne p0, p1, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v1

    .line 203
    :cond_1
    instance-of v3, p1, Lcom/android/contacts/list/ContactListFilter;

    if-nez v3, :cond_2

    move v1, v2

    .line 204
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 207
    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    .line 208
    .local v0, "otherFilter":Lcom/android/contacts/list/ContactListFilter;
    iget v3, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    iget v4, v0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    move v1, v2

    .line 212
    goto :goto_0

    .line 215
    :cond_4
    iget-object v3, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    if-eqz v3, :cond_5

    .line 216
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 219
    :cond_5
    iget-wide v3, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    iget-wide v5, v0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x2d

    .line 307
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->mId:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 311
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 314
    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 317
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    const/16 v3, 0x5f

    invoke-virtual {v2, v5, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 320
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->mId:Ljava/lang/String;

    .line 326
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->mId:Ljava/lang/String;

    return-object v1

    .line 321
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    iget-wide v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 322
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 181
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    .line 182
    .local v0, "code":I
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 183
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 184
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 186
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 187
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 190
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 194
    :cond_2
    :goto_0
    return v0

    .line 191
    :cond_3
    iget-wide v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    .line 192
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    long-to-int v2, v2

    add-int v0, v1, v2

    goto :goto_0
.end method

.method public isValidationRequired()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 128
    iget v1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 133
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    packed-switch v0, :pswitch_data_0

    .line 155
    :pswitch_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 135
    :pswitch_1
    const-string v0, "default"

    goto :goto_0

    .line 137
    :pswitch_2
    const-string v0, "all_accounts"

    goto :goto_0

    .line 139
    :pswitch_3
    const-string v0, "custom"

    goto :goto_0

    .line 141
    :pswitch_4
    const-string v0, "starred"

    goto :goto_0

    .line 143
    :pswitch_5
    const-string v0, "with_phones"

    goto :goto_0

    .line 145
    :pswitch_6
    const-string v0, "single"

    goto :goto_0

    .line 147
    :pswitch_7
    const-string v0, "move to Knox"

    goto :goto_0

    .line 149
    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_1

    .line 152
    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "group: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/list/ContactListFilter;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_1
    const-string v0, ""

    goto :goto_2

    .line 133
    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 268
    iget v0, p0, Lcom/android/contacts/list/ContactListFilter;->filterType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->accountName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->accountType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->dataSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 272
    iget-wide v0, p0, Lcom/android/contacts/list/ContactListFilter;->groupId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 273
    iget-object v0, p0, Lcom/android/contacts/list/ContactListFilter;->groupSourceId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-boolean v0, p0, Lcom/android/contacts/list/ContactListFilter;->groupReadOnly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
