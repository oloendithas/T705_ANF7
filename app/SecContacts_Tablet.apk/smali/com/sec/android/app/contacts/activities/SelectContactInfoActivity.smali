.class public Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
.super Landroid/app/ListActivity;
.source "SelectContactInfoActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$SeparatorViewEntry;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;,
        Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;
    }
.end annotation


# static fields
.field private static final EXTRA_ALL_CHECKED:Ljava/lang/String; = "checkedAllItem"

.field private static final EXTRA_CHECKED_INFO:Ljava/lang/String; = "checkedInfoHash"

.field private static final EXTRA_IS_DIRECT_LAUNCH:Ljava/lang/String; = "direct_launch"

.field private static final EXTRA_MODE:Ljava/lang/String; = "mode"

.field private static final EXTRA_NAMECARD_STRING:Ljava/lang/String; = "namecard_string"

.field private static final EXTRA_UNCHECKED_INFO:Ljava/lang/String; = "uncheckedInfoHash"

.field private static final ID_LOADER_INIT:I = 0x1

.field private static final KEEP_ALL_CHECKED_STATUS:I = -0x1

.field public static final MODE_PRINT_NAMECARD:I = 0x2

.field public static final MODE_SEND_CONTACT_INFO:I = 0x1

.field private static final NOTE_MAX_LINES:I = 0x3e8

.field private static final POSTAL_ADDRESS_MAX_LINES:I = 0xa

.field public static final SELECT_CONTACT_URI:Ljava/lang/String; = "CONTACT_URI"

.field public static final SEND_INFO:Ljava/lang/String; = "com.android.contacts.action.SEND_INFO"

.field private static final SIP_ADDRESS_MAX_LINES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SelectContactInfoActivity"

.field private static final WEBSITE_MAX_LINES:I = 0x1


# instance fields
.field private isUsingTwoPanel:Z

.field private mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mCheckedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/ContactLoader$Result;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDisplayName:Ljava/lang/String;

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mEventEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewsCount:I

.field private mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDirectLaunch:Z

.field private mIsMultiWindowSupported:Z

.field private mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

.field protected mLookupUri:Landroid/net/Uri;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mMode:I

.field private mNickNameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOrganizationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRelationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSipEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalSize:I

.field private mUnCheckedList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mWebEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNickNameEntries:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWebEntries:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSipEntries:Ljava/util/ArrayList;

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPostalEntries:Ljava/util/ArrayList;

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEventEntries:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRelationEntries:Ljava/util/ArrayList;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNoteEntries:Ljava/util/ArrayList;

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    .line 657
    new-instance v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1151
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
    .param p1, "x1"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindData(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method static synthetic access$102(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Lcom/sec/android/app/contacts/ListHoverManager;)Lcom/sec/android/app/contacts/ListHoverManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/ListHoverManager;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;

    .prologue
    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setMaxLines(Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/model/DataKind;
    .param p1, "x1"    # Landroid/content/ContentValues;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addLastSeparator()V
    .locals 2

    .prologue
    .line 515
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$SeparatorViewEntry;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    :cond_0
    return-void
.end method

.method private bindData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 20
    .param p1, "data"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 363
    if-nez p1, :cond_0

    .line 451
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->initData()V

    .line 369
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    if-nez v2, :cond_1

    const v2, 0x104000e

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    .line 372
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v9

    .line 374
    .local v9, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/Entity;

    .line 375
    .local v11, "entity":Landroid/content/Entity;
    invoke-virtual {v11}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v13

    .line 376
    .local v13, "entryValues":Landroid/content/ContentValues;
    const-string v2, "data_set"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 377
    .local v10, "dataSet":Ljava/lang/String;
    const-string v2, "account_type"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 379
    .local v8, "accountType":Ljava/lang/String;
    invoke-virtual {v11}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Entity$NamedContentValues;

    .line 380
    .local v17, "subValue":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v17

    iget-object v7, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 381
    .local v7, "subEntryValues":Landroid/content/ContentValues;
    const-string v2, "mimetype"

    invoke-virtual {v7, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 382
    .local v3, "mimeType":Ljava/lang/String;
    const-string v2, "_id"

    invoke-virtual {v13, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    .line 383
    .local v5, "dataId":J
    invoke-virtual {v9, v8, v10}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v18

    .line 385
    .local v18, "type":Lcom/android/contacts/model/AccountType;
    if-eqz v3, :cond_3

    .line 390
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/model/AccountType;->areContactsWritable()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v8}, Lcom/sec/android/app/contacts/model/AccountTypeInfo;->isSimAccount(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v8}, Lcom/sec/android/app/contacts/model/AccountTypeInfo;->isPhonePersonalAccount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 394
    :cond_4
    invoke-virtual {v9, v8, v10, v3}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v4

    .line 396
    .local v4, "kind":Lcom/android/contacts/model/DataKind;
    if-eqz v4, :cond_3

    .line 399
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v2 .. v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    move-result-object v12

    .line 402
    .local v12, "entry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    iget-object v2, v12, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v14, 0x1

    .line 403
    .local v14, "hasData":Z
    :goto_2
    if-eqz v14, :cond_3

    .line 405
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 406
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12, v8}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindPhoneNumberData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Ljava/lang/String;)V

    goto :goto_1

    .line 402
    .end local v14    # "hasData":Z
    :cond_5
    const/4 v14, 0x0

    goto :goto_2

    .line 407
    .restart local v14    # "hasData":Z
    :cond_6
    const-string v2, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 408
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindEmailData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto :goto_1

    .line 409
    :cond_7
    const-string v2, "vnd.android.cursor.item/im"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 410
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindImData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto :goto_1

    .line 411
    :cond_8
    const-string v2, "vnd.android.cursor.item/organization"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 412
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindOrgData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 413
    :cond_9
    const-string v2, "vnd.android.cursor.item/nickname"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 414
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindNickNameData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 415
    :cond_a
    const-string v2, "vnd.android.cursor.item/website"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 416
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindWebData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 417
    :cond_b
    const-string v2, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 418
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindSipData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 419
    :cond_c
    const-string v2, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 420
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindPostalData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 421
    :cond_d
    const-string v2, "vnd.android.cursor.item/contact_event"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 422
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindEventData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 423
    :cond_e
    const-string v2, "vnd.android.cursor.item/relation"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 424
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindRelationData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 425
    :cond_f
    const-string v2, "vnd.android.cursor.item/note"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 426
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v12}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->bindNoteData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 431
    .end local v3    # "mimeType":Ljava/lang/String;
    .end local v4    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v5    # "dataId":J
    .end local v7    # "subEntryValues":Landroid/content/ContentValues;
    .end local v8    # "accountType":Ljava/lang/String;
    .end local v10    # "dataSet":Ljava/lang/String;
    .end local v11    # "entity":Landroid/content/Entity;
    .end local v12    # "entry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    .end local v13    # "entryValues":Landroid/content/ContentValues;
    .end local v14    # "hasData":Z
    .end local v16    # "i$":Ljava/util/Iterator;
    .end local v17    # "subValue":Landroid/content/Entity$NamedContentValues;
    .end local v18    # "type":Lcom/android/contacts/model/AccountType;
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 438
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 443
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setupFlattenedList()V

    .line 445
    new-instance v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v2, v0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;Landroid/app/ListActivity;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;

    .line 446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 448
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmptyView:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 450
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->updateSaveButtonStatus()V

    goto/16 :goto_0
.end method

.method private bindEmailData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 5
    .param p1, "subEntryValues"    # Landroid/content/ContentValues;
    .param p2, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .prologue
    .line 763
    const-string v3, "data2"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 765
    .local v1, "typeString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 767
    .local v0, "dataType":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 768
    const/4 v0, 0x2

    .line 773
    :goto_0
    const/4 v2, 0x0

    .line 774
    .local v2, "types":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->isCustomType(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 775
    const-string v3, "data3"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 780
    :goto_1
    const-string v3, "_id"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->id:J

    .line 781
    iput-object v2, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 782
    const-string v3, "data1"

    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 784
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    return-void

    .line 770
    .end local v2    # "types":Ljava/lang/String;
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 777
    .restart local v2    # "types":Ljava/lang/String;
    :cond_1
    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private bindEventData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 5
    .param p1, "subEntryValues"    # Landroid/content/ContentValues;
    .param p2, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .prologue
    .line 831
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Calendar_EnableLunar"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 833
    iget-object v2, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 834
    .local v1, "typeIndex":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 835
    iget-object v2, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 836
    .local v0, "date":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/contacts/util/DateUtils;->formatDateForLunar(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    iget-object v4, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 844
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "typeIndex":I
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 845
    return-void

    .line 839
    .restart local v1    # "typeIndex":I
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_0

    .line 842
    .end local v1    # "typeIndex":I
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    iget-object v3, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    goto :goto_0
.end method

.method private bindImData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 2
    .param p1, "subEntryValues"    # Landroid/content/ContentValues;
    .param p2, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .prologue
    .line 788
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->buildImActions(Landroid/content/Context;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Landroid/content/ContentValues;)V

    .line 789
    const-string v0, "_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->id:J

    .line 790
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 791
    return-void
.end method

.method private bindNickNameData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1
    .param p1, "subEntryValues"    # Landroid/content/ContentValues;
    .param p2, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .prologue
    .line 814
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNickNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    return-void
.end method

.method private bindNoteData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1
    .param p1, "subEntryValues"    # Landroid/content/ContentValues;
    .param p2, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .prologue
    .line 799
    const/16 v0, 0x3e8

    iput v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    return-void
.end method

.method private bindOrgData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1
    .param p1, "subEntryValues"    # Landroid/content/ContentValues;
    .param p2, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .prologue
    .line 794
    const-string v0, "data1"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 795
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 796
    return-void
.end method

.method private bindPhoneNumberData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Ljava/lang/String;)V
    .locals 9
    .param p1, "subEntryValues"    # Landroid/content/ContentValues;
    .param p2, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    .param p3, "accountType"    # Ljava/lang/String;

    .prologue
    .line 701
    const-string v7, "data1"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 702
    .local v2, "number":Ljava/lang/String;
    const-string v7, "normalized_number"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 703
    .local v3, "phoneNumberE164":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 705
    .local v0, "currentLang":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    if-eqz v2, :cond_3

    .line 706
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 718
    :cond_0
    :goto_0
    const-string v7, "ar"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "he"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "iw"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "ur"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v7, "fa"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 725
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 726
    .local v4, "removeFormat":Ljava/lang/String;
    move-object v2, v4

    .line 729
    .end local v4    # "removeFormat":Ljava/lang/String;
    :cond_2
    const-string v7, "data2"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 731
    .local v5, "typeString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 733
    .local v1, "dataType":I
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 734
    const/4 v1, 0x2

    .line 739
    :goto_1
    const/4 v6, 0x0

    .line 740
    .local v6, "types":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->isCustomType(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 741
    const-string v7, "data3"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 754
    :goto_2
    const-string v7, "_id"

    invoke-virtual {p1, v7}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iput-wide v7, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->id:J

    .line 755
    iput-object v6, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 756
    iput-object v2, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 758
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v7, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    return-void

    .line 708
    .end local v1    # "dataType":I
    .end local v5    # "typeString":Ljava/lang/String;
    .end local v6    # "types":Ljava/lang/String;
    :cond_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v8, "CscFeature_Common_DisablePhoneNumberFormatting"

    invoke-virtual {v7, v8}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 712
    if-eqz v2, :cond_0

    .line 713
    iget-object v7, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v3, v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 736
    .restart local v1    # "dataType":I
    .restart local v5    # "typeString":Ljava/lang/String;
    :cond_4
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 743
    .restart local v6    # "types":Ljava/lang/String;
    :cond_5
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getAnrConfigValue()I

    move-result v7

    if-lez v7, :cond_7

    const-string v7, "vnd.sec.contact.sim"

    invoke-virtual {v7, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 744
    const/4 v7, 0x2

    if-ne v1, v7, :cond_6

    .line 745
    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 747
    :cond_6
    const v7, 0x7f0e03d9

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 750
    :cond_7
    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2
.end method

.method private bindPostalData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1
    .param p1, "subEntryValues"    # Landroid/content/ContentValues;
    .param p2, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .prologue
    .line 822
    const/16 v0, 0xa

    iput v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    .line 823
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 824
    return-void
.end method

.method private bindRelationData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1
    .param p1, "subEntryValues"    # Landroid/content/ContentValues;
    .param p2, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRelationEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 819
    return-void
.end method

.method private bindSipData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1
    .param p1, "subEntryValues"    # Landroid/content/ContentValues;
    .param p2, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .prologue
    .line 809
    const/4 v0, 0x1

    iput v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    .line 810
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSipEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 811
    return-void
.end method

.method private bindWebData(Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;)V
    .locals 1
    .param p1, "subEntryValues"    # Landroid/content/ContentValues;
    .param p2, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .prologue
    .line 804
    const/4 v0, 0x1

    iput v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->maxLines:I

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    return-void
.end method

.method private static buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1177
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 1181
    :cond_0
    :goto_0
    return-object v1

    .line 1180
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v2, p2, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1181
    .local v0, "actionBody":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private buildImActions(Landroid/content/Context;Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Landroid/content/ContentValues;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 849
    const-string v2, "vnd.android.cursor.item/email_v2"

    const-string v3, "mimetype"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 851
    .local v1, "isEmail":Z
    if-nez v1, :cond_1

    .line 863
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    const-string v2, "data1"

    invoke-virtual {p3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 860
    iput-object v0, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 861
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    goto :goto_0
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 495
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 496
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    iget-object v2, v3, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 497
    .local v2, "kind":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;

    invoke-direct {v4, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    .end local v2    # "kind":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 503
    if-eqz v1, :cond_1

    .line 504
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 506
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 501
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 510
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 511
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 690
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 693
    :cond_0
    return-void
.end method

.method private isAllItemChecked()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1246
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mTotalSize:I

    if-ne v0, v1, :cond_1

    .line 1248
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1249
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1250
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1259
    :cond_0
    :goto_0
    return-void

    .line 1251
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1252
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1253
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1254
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 1256
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method private isCustomType(I)Z
    .locals 1
    .param p1, "dataType"    # I

    .prologue
    .line 696
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private parseData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "entry"    # Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    .param p2, "data"    # Ljava/lang/StringBuilder;

    .prologue
    .line 633
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 635
    :cond_1
    const-string v0, ""

    .line 637
    .local v0, "attach":Ljava/lang/String;
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 638
    const-string v0, " : "

    .line 642
    :goto_1
    if-eqz p1, :cond_0

    .line 643
    iget-object v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    if-eqz v1, :cond_3

    const-string v1, ""

    iget-object v2, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 644
    iget-object v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 645
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 650
    :goto_2
    iget-object v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 651
    iget-object v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 652
    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 640
    :cond_2
    const-string v0, " "

    goto :goto_1

    .line 647
    :cond_3
    iget-object v1, p1, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;->kind:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 648
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private performSaveAction()V
    .locals 8

    .prologue
    .line 530
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->parseSendData()Ljava/lang/String;

    move-result-object v0

    .line 532
    .local v0, "data":Ljava/lang/String;
    iget v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 560
    const-string v4, "SelectContactInfoActivity"

    const-string v5, "Mode is not defined"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    .line 565
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 567
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V

    .line 568
    return-void

    .line 534
    :pswitch_0
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsDirectLaunch:Z

    if-eqz v4, :cond_2

    .line 536
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "smsto"

    const-string v6, ""

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 539
    .local v2, "intentSendContact":Landroid/content/Intent;
    invoke-static {p0}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Contact_EnableCallerIdSearch4Korea"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 541
    const-string v4, "com.android.mms"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 543
    :cond_1
    const-string v4, "sms_body"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 547
    .end local v2    # "intentSendContact":Landroid/content/Intent;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 548
    .local v3, "intentSendContactFromMMS":Landroid/content/Intent;
    const-string v4, "namecard_string"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 549
    const/4 v4, -0x1

    invoke-virtual {p0, v4, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 553
    .end local v3    # "intentSendContactFromMMS":Landroid/content/Intent;
    :pswitch_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.sec.android.app.mobileprint.PRINT"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 554
    .local v1, "intentPrintContact":Landroid/content/Intent;
    const-string v4, "android.intent.extra.TITLE"

    const-string v5, "Contact"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    const-string v4, "android.intent.extra.SUBJECT"

    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 556
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 557
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 532
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private prepareData()V
    .locals 4

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "CONTACT_URI"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    .line 523
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 524
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "CONTACT_URI"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 525
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 526
    return-void
.end method

.method private setLayout()V
    .locals 6

    .prologue
    .line 338
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 339
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c020a

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 340
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 341
    .local v0, "dimAmount":F
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->isUsingTwoPanel:Z

    if-eqz v3, :cond_0

    .line 342
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 348
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 349
    const/16 v3, 0x35

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 350
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 352
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 354
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 355
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f040089

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method private setMaxLines(Landroid/widget/TextView;I)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "maxLines"    # I

    .prologue
    const/4 v0, 0x1

    .line 1166
    if-ne p2, v0, :cond_0

    .line 1167
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1168
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 1174
    :goto_0
    return-void

    .line 1170
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 1171
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 1172
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0
.end method

.method private setupFlattenedList()V
    .locals 2

    .prologue
    .line 454
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNickNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSipEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRelationEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mTotalSize:I

    .line 459
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 460
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 461
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mImEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 462
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mOrganizationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 463
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNickNameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 464
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mWebEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 465
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mSipEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 466
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mPostalEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 467
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEventEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 468
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mRelationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 469
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mNoteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 471
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->addLastSeparator()V

    .line 482
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mTotalSize:I

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setupTitle()V
    .locals 4

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 306
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 307
    const/4 v1, 0x0

    .line 309
    .local v1, "displayName":Ljava/lang/CharSequence;
    iget v2, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    packed-switch v2, :pswitch_data_0

    .line 317
    const-string v2, "SelectContactInfoActivity"

    const-string v3, "Mode is not defined"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 321
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 322
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 325
    .end local v1    # "displayName":Ljava/lang/CharSequence;
    :cond_0
    return-void

    .line 311
    .restart local v1    # "displayName":Ljava/lang/CharSequence;
    :pswitch_0
    const v2, 0x7f0e0227

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 312
    goto :goto_0

    .line 314
    :pswitch_1
    const v2, 0x7f0e022a

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 315
    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSaveButtonStatus()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1262
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMenuDone:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1264
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1265
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1266
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1267
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mTotalSize:I

    if-ge v0, v1, :cond_3

    .line 1268
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMenuDone:Landroid/view/MenuItem;

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 1270
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMenuDone:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v4, 0x400

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 177
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 180
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsMultiWindowSupported:Z

    .line 182
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsMultiWindowSupported:Z

    if-eqz v3, :cond_0

    .line 183
    new-instance v3, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v3, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 184
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 189
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x800000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 190
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x2000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 191
    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setFinishOnTouchOutside(Z)V

    .line 193
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 195
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "CONTACT_URI"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/Uri;

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mLookupUri:Landroid/net/Uri;

    .line 196
    const-string v3, "direct_launch"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mIsDirectLaunch:Z

    .line 198
    const-string v3, "mode"

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    .line 200
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    .line 201
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->isUsingTwoPanel:Z

    .line 203
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 205
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x7f0401e0

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setContentView(I)V

    .line 206
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 208
    const v3, 0x7f09014b

    invoke-virtual {p0, v3}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmptyView:Landroid/view/View;

    .line 211
    iget v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 212
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mEmptyView:Landroid/view/View;

    const v4, 0x7f090037

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0e0077

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 215
    :cond_1
    const v3, 0x7f040068

    invoke-virtual {v0, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    .line 216
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    const v4, 0x7f09011e

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 217
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 221
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->isUsingTwoPanel:Z

    if-eqz v3, :cond_2

    .line 222
    const v3, 0x7f0401f4

    invoke-virtual {v0, v3, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 223
    .local v2, "marginView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 226
    .end local v2    # "marginView":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v3

    iput v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderViewsCount:I

    .line 228
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    .line 229
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    .line 231
    if-eqz p1, :cond_5

    .line 233
    const-string v3, "checkedInfoHash"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 234
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 235
    const-string v3, "checkedInfoHash"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    .line 238
    :cond_3
    const-string v3, "uncheckedInfoHash"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 239
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 240
    const-string v3, "uncheckedInfoHash"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iput-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    .line 243
    :cond_4
    const-string v3, "checkedAllItem"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 244
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v3, :cond_5

    .line 245
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 250
    :cond_5
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->prepareData()V

    .line 251
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setupTitle()V

    .line 252
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setLayout()V

    .line 253
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 273
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 274
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 276
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 277
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->updateSaveButtonStatus()V

    .line 279
    const/4 v1, 0x1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 1186
    if-gez p3, :cond_1

    .line 1243
    :cond_0
    :goto_0
    return-void

    .line 1187
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    .line 1189
    if-nez p3, :cond_5

    .line 1193
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1194
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1196
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1197
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1202
    :goto_1
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1203
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    .line 1207
    :cond_2
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;

    invoke-virtual {v1}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DefaultSettingAdapter;->notifyDataSetChanged()V

    .line 1242
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->updateSaveButtonStatus()V

    goto :goto_0

    .line 1199
    :cond_4
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    goto :goto_1

    .line 1211
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;

    .line 1212
    .local v0, "viewCache":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;
    iget v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mHeaderViewsCount:I

    sub-int/2addr p3, v1

    .line 1213
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v1, :cond_0

    .line 1216
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1217
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1218
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_6

    .line 1221
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1224
    :cond_6
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->isAllItemChecked()V

    .line 1237
    :goto_3
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1238
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->sendAccessibilityEvent(I)V

    goto :goto_2

    .line 1226
    :cond_7
    iget-object v1, v0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 1227
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    .line 1228
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1234
    :cond_8
    :goto_4
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->isAllItemChecked()V

    goto :goto_3

    .line 1230
    :cond_9
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_8

    .line 1231
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1232
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4
.end method

.method public onModeChanged(Z)V
    .locals 3
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 1277
    const-string v0, "SelectContactInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->recreate()V

    .line 1279
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 300
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 292
    :sswitch_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->finish()V

    goto :goto_0

    .line 295
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->performSaveAction()V

    goto :goto_0

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_1
        0x7f0904f6 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 284
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 258
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 259
    const-string v0, "checkedInfoHash"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 262
    const-string v0, "uncheckedInfoHash"

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 264
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    const-string v0, "checkedAllItem"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 267
    :cond_2
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 268
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 1284
    const-string v0, "SelectContactInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSizeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 329
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->setLayout()V

    .line 332
    :cond_0
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 3
    .param p1, "zoneInfo"    # I

    .prologue
    .line 1290
    const-string v0, "SelectContactInfoActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onZoneChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    return-void
.end method

.method public parseSendData()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 572
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 574
    .local v0, "data":Ljava/lang/StringBuilder;
    iget v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mMode:I

    const/4 v11, 0x1

    if-ne v9, v11, :cond_0

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    if-eqz v9, :cond_0

    .line 575
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 579
    :cond_0
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    if-nez v9, :cond_3

    .line 580
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_0
    move-object v10, v9

    .line 628
    :cond_1
    :goto_1
    return-object v10

    :cond_2
    move-object v9, v10

    .line 580
    goto :goto_0

    .line 583
    :cond_3
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_4

    .line 586
    new-instance v7, Ljava/util/TreeMap;

    invoke-direct {v7}, Ljava/util/TreeMap;-><init>()V

    .line 587
    .local v7, "sortedMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mCheckedList:Ljava/util/HashMap;

    invoke-virtual {v7, v9}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    .line 588
    invoke-virtual {v7}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 589
    .local v3, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;>;"
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 591
    :try_start_0
    iget-object v11, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .line 592
    .local v2, "entry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->parseData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Ljava/lang/StringBuilder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 593
    .end local v2    # "entry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    :catch_0
    move-exception v1

    .line 595
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 599
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Boolean;>;>;"
    .end local v7    # "sortedMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/Integer;Ljava/lang/Boolean;>;"
    :cond_4
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_7

    .line 601
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 602
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;>;"
    const/4 v5, 0x0

    .line 604
    .local v5, "position":I
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 605
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .line 606
    .local v8, "viewEntry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mUnCheckedList:Ljava/util/HashMap;

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "position":I
    .local v6, "position":I
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    move v5, v6

    .line 607
    .end local v6    # "position":I
    .restart local v5    # "position":I
    goto :goto_3

    .line 609
    .end local v5    # "position":I
    .restart local v6    # "position":I
    :cond_5
    invoke-virtual {v8}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->getViewType()I

    move-result v9

    if-nez v9, :cond_6

    move-object v2, v8

    .line 610
    check-cast v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .line 611
    .restart local v2    # "entry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->parseData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Ljava/lang/StringBuilder;)V

    .end local v2    # "entry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    :cond_6
    move v5, v6

    .line 613
    .end local v6    # "position":I
    .restart local v5    # "position":I
    goto :goto_3

    .line 615
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;>;"
    .end local v5    # "position":I
    .end local v8    # "viewEntry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    :cond_7
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllItem:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v9}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 617
    iget-object v9, p0, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 618
    .restart local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;>;"
    :cond_8
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 619
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;

    .line 621
    .restart local v8    # "viewEntry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    invoke-virtual {v8}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;->getViewType()I

    move-result v9

    if-nez v9, :cond_8

    move-object v2, v8

    .line 622
    check-cast v2, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;

    .line 623
    .restart local v2    # "entry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    invoke-direct {p0, v2, v0}, Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity;->parseData(Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;Ljava/lang/StringBuilder;)V

    goto :goto_4

    .line 628
    .end local v2    # "entry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$DetailViewEntry;
    .end local v4    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;>;"
    .end local v8    # "viewEntry":Lcom/sec/android/app/contacts/activities/SelectContactInfoActivity$ViewEntry;
    :cond_9
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1
.end method
