.class final Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;
.super Landroid/widget/Filter;
.source "BaseEmailAddressAdapterSec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultPartitionFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;
    .param p2, "x1"    # Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$1;

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;-><init>(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resultValue"    # Ljava/lang/Object;

    .prologue
    .line 352
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    check-cast p1, Landroid/database/Cursor;

    .end local p1    # "resultValue":Ljava/lang/Object;
    # invokes: Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->access$400(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 19
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 218
    const/4 v11, 0x0

    .line 219
    .local v11, "directoryCursor":Landroid/database/Cursor;
    const/16 v17, 0x0

    .line 221
    .local v17, "recentCursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    # getter for: Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mDirectoriesLoaded:Z
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->access$000(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 222
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    iget-object v1, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryListQuery;->URI:Landroid/net/Uri;

    sget-object v3, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryListQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 224
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    const/4 v3, 0x1

    # setter for: Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mDirectoriesLoaded:Z
    invoke-static {v1, v3}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->access$002(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;Z)Z

    .line 226
    :cond_0
    const/4 v15, 0x0

    .line 227
    .local v15, "mergeResultCursor":Landroid/database/MergeCursor;
    new-instance v18, Landroid/widget/Filter$FilterResults;

    invoke-direct/range {v18 .. v18}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 228
    .local v18, "results":Landroid/widget/Filter$FilterResults;
    const/4 v10, 0x0

    .line 229
    .local v10, "cursor":Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 230
    .local v14, "groupCursor":Landroid/database/Cursor;
    const/16 v16, 0x0

    .line 231
    .local v16, "rICursor1":Landroid/database/Cursor;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 232
    const/4 v2, 0x0

    .line 233
    .local v2, "uri":Landroid/net/Uri;
    const/4 v9, 0x0

    .line 234
    .local v9, "builder":Landroid/net/Uri$Builder;
    sget-boolean v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v1, :cond_8

    .line 235
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    .line 243
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    # getter for: Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;
    invoke-static {v1}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->access$200(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 244
    const-string v1, "name_for_primary_account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    # getter for: Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->access$200(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v9, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 245
    const-string v1, "type_for_primary_account"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    # getter for: Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;
    invoke-static {v3}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->access$200(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;

    move-result-object v3

    iget-object v3, v3, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 247
    :cond_1
    invoke-virtual {v9}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 248
    sget-boolean v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-eqz v1, :cond_2

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->getGroupNameCursor(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v14

    .line 250
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    iget-object v1, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$EmailQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 259
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    iget-boolean v1, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isOnlineSearchDisabled:Z

    if-nez v1, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    # getter for: Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->Acc_Id:Ljava/lang/Long;
    invoke-static {v3}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->access$300(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object/from16 v0, p1

    invoke-virtual {v1, v5, v6, v0}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->RIemailAddress(JLjava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v16

    .line 265
    :cond_3
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 267
    .local v13, "filter":Ljava/lang/String;
    const-string v1, "content://com.android.email.provider/emailaddresscache/filter"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v13}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 271
    .local v4, "emailCacheUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    iget-object v3, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v6, "accountName as display_name"

    aput-object v6, v5, v1

    const/4 v1, 0x1

    const-string v6, "accountAddress as data1"

    aput-object v6, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "usageCount DESC, accountName"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 278
    .end local v4    # "emailCacheUri":Landroid/net/Uri;
    .end local v13    # "filter":Ljava/lang/String;
    :goto_1
    if-eqz v16, :cond_a

    if-eqz v17, :cond_a

    .line 279
    if-eqz v14, :cond_4

    sget-boolean v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_9

    .line 280
    :cond_4
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15    # "mergeResultCursor":Landroid/database/MergeCursor;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v10, v1, v3

    const/4 v3, 0x1

    aput-object v16, v1, v3

    const/4 v3, 0x2

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 288
    .restart local v15    # "mergeResultCursor":Landroid/database/MergeCursor;
    :goto_2
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    .line 332
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v9    # "builder":Landroid/net/Uri$Builder;
    :cond_5
    :goto_3
    if-eqz v14, :cond_6

    sget-boolean v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_7

    :cond_6
    if-nez v16, :cond_7

    if-eqz v17, :cond_13

    .line 333
    :cond_7
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v11, v1, v3

    const/4 v3, 0x1

    aput-object v15, v1, v3

    move-object/from16 v0, v18

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 338
    :goto_4
    return-object v18

    .line 238
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v9    # "builder":Landroid/net/Uri$Builder;
    :cond_8
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v3, "limit"

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    # getter for: Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I
    invoke-static {v5}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->access$100(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v9

    goto/16 :goto_0

    .line 274
    :catch_0
    move-exception v12

    .line 275
    .local v12, "e":Ljava/lang/Exception;
    const/16 v17, 0x0

    goto :goto_1

    .line 284
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_9
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15    # "mergeResultCursor":Landroid/database/MergeCursor;
    const/4 v1, 0x4

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v16, v1, v3

    const/4 v3, 0x3

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v15    # "mergeResultCursor":Landroid/database/MergeCursor;
    goto :goto_2

    .line 289
    :cond_a
    if-eqz v16, :cond_d

    .line 290
    if-eqz v14, :cond_b

    sget-boolean v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_c

    .line 291
    :cond_b
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15    # "mergeResultCursor":Landroid/database/MergeCursor;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v10, v1, v3

    const/4 v3, 0x1

    aput-object v16, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 299
    .restart local v15    # "mergeResultCursor":Landroid/database/MergeCursor;
    :goto_5
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_3

    .line 295
    :cond_c
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15    # "mergeResultCursor":Landroid/database/MergeCursor;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v16, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v15    # "mergeResultCursor":Landroid/database/MergeCursor;
    goto :goto_5

    .line 300
    :cond_d
    if-eqz v17, :cond_10

    .line 301
    if-eqz v14, :cond_e

    sget-boolean v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_f

    .line 302
    :cond_e
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15    # "mergeResultCursor":Landroid/database/MergeCursor;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v10, v1, v3

    const/4 v3, 0x1

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 310
    .restart local v15    # "mergeResultCursor":Landroid/database/MergeCursor;
    :goto_6
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_3

    .line 306
    :cond_f
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15    # "mergeResultCursor":Landroid/database/MergeCursor;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    const/4 v3, 0x2

    aput-object v17, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .restart local v15    # "mergeResultCursor":Landroid/database/MergeCursor;
    goto :goto_6

    .line 312
    :cond_10
    if-eqz v14, :cond_11

    sget-boolean v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-nez v1, :cond_12

    .line 313
    :cond_11
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_3

    .line 315
    :cond_12
    new-instance v15, Landroid/database/MergeCursor;

    .end local v15    # "mergeResultCursor":Landroid/database/MergeCursor;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v14, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    invoke-direct {v15, v1}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 318
    .restart local v15    # "mergeResultCursor":Landroid/database/MergeCursor;
    invoke-virtual {v15}, Landroid/database/MergeCursor;->getCount()I

    move-result v1

    move-object/from16 v0, v18

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_3

    .line 335
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v9    # "builder":Landroid/net/Uri$Builder;
    :cond_13
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/database/Cursor;

    const/4 v3, 0x0

    aput-object v11, v1, v3

    const/4 v3, 0x1

    aput-object v10, v1, v3

    move-object/from16 v0, v18

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto/16 :goto_4
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 4
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 343
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 344
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, [Landroid/database/Cursor;

    move-object v0, v1

    check-cast v0, [Landroid/database/Cursor;

    .line 345
    .local v0, "cursors":[Landroid/database/Cursor;
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->onDirectoryLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 347
    .end local v0    # "cursors":[Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;->this$0:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    invoke-virtual {v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getCount()I

    move-result v1

    iput v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 348
    return-void
.end method
