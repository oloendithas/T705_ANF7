.class public abstract Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;
.super Lcom/android/common/widget/CompositeCursorAdapter;
.source "BaseEmailAddressAdapterSec.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;,
        Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;,
        Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryListQuery;,
        Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$EmailQuery1;,
        Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$EmailQuery;,
        Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    }
.end annotation


# static fields
.field private static final ALLOWANCE_FOR_DUPLICATES:I = 0x5

.field private static BackupOfSearchedString:Ljava/lang/String; = null

.field private static final DEFAULT_PREFERRED_MAX_RESULT_COUNT:I = 0xa

.field private static final DIRECTORY_LOCAL_INVISIBLE:J = 0x1L

.field private static final DIRECTORY_PARAM_KEY:Ljava/lang/String; = "directory"

.field public static final EXCHANGE_GAL_AUTHORITY:Ljava/lang/String; = "com.android.exchange.directory.provider"

.field public static final EXCHANGE_GAL_SHOW_MORE:Ljava/lang/String; = "gal_search_show_more"

.field public static ExpandResultMaxAndShowMoreMode:Z = false

.field public static final GAL_ALIAS:Ljava/lang/String; = "alias"

.field public static final GAL_COMPANY:Ljava/lang/String; = "company"

.field public static final GAL_DISPLAY_NAME:Ljava/lang/String; = "displayName"

.field public static final GAL_EMAIL_ADDRESS:Ljava/lang/String; = "emailAddress"

.field public static final GAL_FIRST_NAME:Ljava/lang/String; = "firstName"

.field public static final GAL_HOME_PHONE:Ljava/lang/String; = "homePhone"

.field public static final GAL_LAST_NAME:Ljava/lang/String; = "lastName"

.field public static final GAL_MOBILE_PHONE:Ljava/lang/String; = "mobilePhone"

.field public static final GAL_OFFICE:Ljava/lang/String; = "office"

.field public static final GAL_PICTURE_DATA:Ljava/lang/String; = "pictureData"

.field public static final GAL_TITLE:Ljava/lang/String; = "title"

.field public static final GAL_WORK_PHONE:Ljava/lang/String; = "workPhone"

.field private static final LIMIT_PARAM_KEY:Ljava/lang/String; = "limit"

.field public static final MAX_DIRECTORYPARTITIONFILTER_RESULT:I = 0x14

.field private static final MESSAGE_SEARCH_PENDING:I = 0x1

.field private static final MESSAGE_SEARCH_PENDING_DELAY:I = 0x3e8

.field public static final NEED_PHOTO_DATA:Ljava/lang/String; = "needPhotoData"

.field private static final PRIMARY_ACCOUNT_NAME:Ljava/lang/String; = "name_for_primary_account"

.field private static final PRIMARY_ACCOUNT_TYPE:Ljava/lang/String; = "type_for_primary_account"

.field public static final RIC_URI:Landroid/net/Uri;

.field private static final SEARCHING_CURSOR_MARKER:Ljava/lang/String; = "searching"

.field public static final START_PARAM_KEY:Ljava/lang/String; = "startindex"

.field private static final TAG:Ljava/lang/String; = "BaseEmailAddressAdapter"

.field public static isEnableGroupSearch:Z


# instance fields
.field private Acc_Id:Ljava/lang/Long;

.field public isOnlineSearchDisabled:Z

.field private mAccount:Landroid/accounts/Account;

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private mDirectoriesLoaded:Z

.field private mHandler:Landroid/os/Handler;

.field private mPreferredMaxResultCount:I

.field protected final mSynchronizer:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    const-string v0, "content://com.android.exchange.directory.provider/recipientInformation cache/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->RIC_URI:Landroid/net/Uri;

    .line 120
    sput-boolean v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    .line 121
    sput-boolean v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 445
    const/16 v0, 0xa

    invoke-direct {p0, p1, v0}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;-><init>(Landroid/content/Context;I)V

    .line 446
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "preferredMaxResultCount"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 449
    invoke-direct {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;-><init>(Landroid/content/Context;)V

    .line 99
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->Acc_Id:Ljava/lang/Long;

    .line 124
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isOnlineSearchDisabled:Z

    .line 126
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mSynchronizer:Ljava/lang/Object;

    .line 441
    iput v2, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    .line 450
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    .line 451
    iput p2, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    .line 453
    iget v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    if-gez v0, :cond_0

    .line 455
    sput-boolean v3, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    .line 462
    :goto_0
    iget v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    .line 463
    sput-boolean v3, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    .line 468
    :goto_1
    new-instance v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$1;-><init>(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    .line 475
    return-void

    .line 459
    :cond_0
    sput-boolean v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    goto :goto_0

    .line 465
    :cond_1
    sput-boolean v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mDirectoriesLoaded:Z

    return v0
.end method

.method static synthetic access$002(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;
    .param p1, "x1"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mDirectoriesLoaded:Z

    return p1
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    .prologue
    .line 53
    iget v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;)Landroid/accounts/Account;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;)Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->Acc_Id:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;
    .param p1, "x1"    # Landroid/database/Cursor;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addShowMoreButtonAtlastPatition()V
    .locals 15

    .prologue
    .line 895
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v11

    .line 897
    .local v11, "totalPatitionCount":I
    const/4 v12, 0x1

    if-gt v11, v12, :cond_0

    .line 898
    const-string v12, "BaseEmailAddressAdapter"

    const-string v13, "addShowMoreButtonAtlastPatition : partition is none"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    :goto_0
    return-void

    .line 902
    :cond_0
    add-int/lit8 v8, v11, -0x1

    .line 904
    .local v8, "partionindex":I
    const/4 v3, 0x0

    .line 905
    .local v3, "enbleShowMore":Z
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, v11, :cond_2

    .line 906
    invoke-virtual {p0, v4}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v9

    check-cast v9, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 907
    .local v9, "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    if-eqz v9, :cond_1

    .line 909
    invoke-virtual {p0, v4}, Lcom/android/common/widget/CompositeCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v0

    .line 910
    .local v0, "curCursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-ltz v12, :cond_1

    .line 912
    const-string v12, "BaseEmailAddressAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addShowMoreButtonAtlastPatition : cursor is not null. + ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-boolean v12, v9, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1

    .line 915
    const-string v12, "BaseEmailAddressAdapter"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "addShowMoreButtonAtlastPatition : showmore does not need. + ("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ")"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const/4 v3, 0x1

    .line 905
    .end local v0    # "curCursor":Landroid/database/Cursor;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 923
    .end local v9    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/common/widget/CompositeCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v6

    .line 925
    .local v6, "lastCursor":Landroid/database/Cursor;
    new-instance v7, Landroid/database/MatrixCursor;

    sget-object v12, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v7, v12}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 926
    .local v7, "newCursor":Landroid/database/MatrixCursor;
    if-eqz v6, :cond_6

    .line 928
    const/4 v12, -0x1

    invoke-interface {v6, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 929
    :cond_3
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 933
    const/4 v12, 0x0

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 934
    .local v1, "displayName":Ljava/lang/String;
    const/4 v12, 0x1

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 937
    .local v2, "emailAddress":Ljava/lang/String;
    sget-object v12, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x2

    aget-object v12, v12, v13

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 938
    .local v5, "imageIndex":I
    const/4 v10, 0x0

    .line 941
    .local v10, "pictureData":Ljava/lang/String;
    if-eqz v1, :cond_4

    const-string v12, "gal_search_show_more"

    invoke-virtual {v1, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 946
    :cond_4
    const/4 v12, -0x1

    if-eq v5, v12, :cond_5

    .line 947
    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 952
    :cond_5
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    const/4 v13, 0x1

    aput-object v2, v12, v13

    const/4 v13, 0x2

    aput-object v10, v12, v13

    invoke-virtual {v7, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    .line 959
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "emailAddress":Ljava/lang/String;
    .end local v5    # "imageIndex":I
    .end local v10    # "pictureData":Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_7

    .line 962
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const-string v14, "gal_search_show_more"

    aput-object v14, v12, v13

    const/4 v13, 0x1

    const-string v14, "-1"

    aput-object v14, v12, v13

    const/4 v13, 0x2

    const-string v14, "gal_search_show_more"

    aput-object v14, v12, v13

    invoke-virtual {v7, v12}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 967
    :goto_3
    invoke-virtual {p0, v8, v7}, Lcom/android/common/widget/CompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    goto/16 :goto_0

    .line 964
    :cond_7
    const-string v12, "BaseEmailAddressAdapter"

    const-string v13, "addShowMoreButtonAtlastPatition : showmore does not need."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private createLoadingCursor()Landroid/database/Cursor;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 794
    new-instance v0, Landroid/database/MatrixCursor;

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "searching"

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 795
    .local v0, "cursor":Landroid/database/MatrixCursor;
    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 796
    return-object v0
.end method

.method public static getBackupOfSearchedString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 603
    sget-object v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->BackupOfSearchedString:Ljava/lang/String;

    return-object v0
.end method

.method private hasDuplicates(Landroid/database/Cursor;I)Z
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "partition"    # I

    .prologue
    const/4 v1, 0x1

    .line 1004
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1005
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1006
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, "emailAddress":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isDuplicate(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1011
    .end local v0    # "emailAddress":Ljava/lang/String;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAllPartitionEmpty()Z
    .locals 3

    .prologue
    .line 990
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v1

    .line 992
    .local v1, "totalCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 994
    invoke-virtual {p0, v0}, Lcom/android/common/widget/CompositeCursorAdapter;->isPartitionEmpty(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 996
    const/4 v2, 0x0

    .line 1000
    :goto_1
    return v2

    .line 992
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1000
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private isAllPartitionLoadFinished()Z
    .locals 4

    .prologue
    .line 974
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v2

    .line 976
    .local v2, "totalCount":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 978
    invoke-virtual {p0, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 979
    .local v0, "curpartition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-boolean v3, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v3, :cond_0

    .line 981
    const/4 v3, 0x0

    .line 985
    .end local v0    # "curpartition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :goto_1
    return v3

    .line 976
    .restart local v0    # "curpartition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 985
    .end local v0    # "curpartition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private isDuplicate(Ljava/lang/String;I)Z
    .locals 6
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "excludePartition"    # I

    .prologue
    const/4 v4, 0x1

    .line 1019
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v3

    .line 1021
    .local v3, "partitionCount":I
    const/4 v2, 0x0

    .local v2, "partition":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 1022
    if-eq v2, p2, :cond_1

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isLoading(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1023
    invoke-virtual {p0, v2}, Lcom/android/common/widget/CompositeCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v1

    .line 1024
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_1

    .line 1025
    const/4 v5, -0x1

    invoke-interface {v1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1026
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1027
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, "address":Ljava/lang/String;
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1036
    .end local v0    # "address":Ljava/lang/String;
    .end local v1    # "cursor":Landroid/database/Cursor;
    :goto_1
    return v4

    .line 1021
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1036
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isDuplicateAddPictureDate(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 15
    .param p1, "emailAddress"    # Ljava/lang/String;
    .param p2, "excludePartition"    # I
    .param p3, "pictureData"    # Ljava/lang/String;

    .prologue
    .line 1040
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v12

    .line 1041
    .local v12, "partitionCount":I
    new-instance v9, Landroid/database/MatrixCursor;

    sget-object v13, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v9, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1042
    .local v9, "newCursor":Landroid/database/MatrixCursor;
    const/4 v6, 0x0

    .line 1043
    .local v6, "defaultPatitionCursorChanged":Z
    const/4 v10, 0x0

    .line 1044
    .local v10, "nowFounded":Z
    const/4 v8, 0x0

    .line 1045
    .local v8, "isduplicated":Z
    const/4 v2, 0x0

    .line 1046
    .local v2, "curdisplayName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1047
    .local v3, "curemailAddress":Ljava/lang/String;
    const/4 v7, -0x1

    .line 1048
    .local v7, "imageIndex":I
    const/4 v4, 0x0

    .line 1050
    .local v4, "curpictureData":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "partition":I
    :goto_0
    if-ge v11, v12, :cond_3

    .line 1051
    move/from16 v0, p2

    if-eq v11, v0, :cond_2

    invoke-direct {p0, v11}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isLoading(I)Z

    move-result v13

    if-nez v13, :cond_2

    .line 1052
    invoke-virtual {p0, v11}, Lcom/android/common/widget/CompositeCursorAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v5

    .line 1053
    .local v5, "cursor":Landroid/database/Cursor;
    if-eqz v5, :cond_2

    .line 1054
    const/4 v13, -0x1

    invoke-interface {v5, v13}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1055
    :cond_0
    :goto_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1056
    const/4 v13, 0x1

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1057
    .local v1, "address":Ljava/lang/String;
    if-nez v11, :cond_1

    .line 1059
    const/4 v13, 0x0

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1060
    const/4 v13, 0x1

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1061
    sget-object v13, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1063
    const/4 v4, 0x0

    .line 1064
    if-ltz v7, :cond_1

    .line 1065
    invoke-interface {v5, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1069
    :cond_1
    const/4 v10, 0x0

    .line 1070
    move-object/from16 v0, p1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 1071
    const/4 v8, 0x1

    .line 1072
    const/4 v10, 0x1

    .line 1074
    if-eqz v11, :cond_4

    .line 1091
    .end local v1    # "address":Ljava/lang/String;
    .end local v5    # "cursor":Landroid/database/Cursor;
    :cond_2
    const/4 v13, 0x1

    if-ne v8, v13, :cond_6

    .line 1097
    :cond_3
    if-eqz v6, :cond_7

    .line 1098
    const/4 v13, 0x0

    invoke-virtual {p0, v13, v9}, Lcom/android/common/widget/CompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 1103
    :goto_2
    return v8

    .line 1079
    .restart local v1    # "address":Ljava/lang/String;
    .restart local v5    # "cursor":Landroid/database/Cursor;
    :cond_4
    if-nez v11, :cond_0

    .line 1080
    if-eqz v10, :cond_5

    if-nez v4, :cond_5

    .line 1081
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object p3, v13, v14

    invoke-virtual {v9, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 1082
    const/4 v6, 0x1

    goto :goto_1

    .line 1084
    :cond_5
    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    const/4 v14, 0x1

    aput-object v3, v13, v14

    const/4 v14, 0x2

    aput-object v4, v13, v14

    invoke-virtual {v9, v13}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1

    .line 1050
    .end local v1    # "address":Ljava/lang/String;
    .end local v5    # "cursor":Landroid/database/Cursor;
    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1100
    :cond_7
    invoke-virtual {v9}, Landroid/database/AbstractCursor;->close()V

    goto :goto_2
.end method

.method private isLoading(I)Z
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 591
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    iget-boolean v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    return v0
.end method

.method private final makeDisplayString(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v4, 0x0

    .line 1107
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "searching"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1108
    const-string v1, ""

    .line 1116
    :cond_0
    :goto_0
    return-object v1

    .line 1111
    :cond_1
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1112
    .local v0, "displayName":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1113
    .local v1, "emailAddress":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1116
    new-instance v2, Landroid/text/util/Rfc822Token;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, v3}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/util/Rfc822Token;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;
    .locals 13
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 842
    if-nez p2, :cond_0

    .line 843
    const-string v7, "BaseEmailAddressAdapter"

    const-string v8, "addShowMoreButtonAtlastPatition : cursor is null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    const/4 p2, 0x0

    .line 891
    .end local p2    # "cursor":Landroid/database/Cursor;
    :goto_0
    return-object p2

    .line 847
    .restart local p2    # "cursor":Landroid/database/Cursor;
    :cond_0
    sget-boolean v7, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-nez v7, :cond_1

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-gt v7, v12, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->hasDuplicates(Landroid/database/Cursor;I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 850
    const-string v7, "BaseEmailAddressAdapter"

    const-string v8, "addShowMoreButtonAtlastPatition : this partition has no duplication."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 855
    :cond_1
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    invoke-direct {v5, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 857
    .local v5, "newCursor":Landroid/database/MatrixCursor;
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 858
    .local v1, "curpartition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    iput-boolean v8, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    .line 860
    const/4 v0, 0x0

    .line 861
    .local v0, "count":I
    invoke-interface {p2, v10}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 863
    :cond_2
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_6

    sget-boolean v7, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-nez v7, :cond_3

    if-ge v0, v12, :cond_6

    .line 864
    :cond_3
    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, "displayName":Ljava/lang/String;
    invoke-interface {p2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 868
    .local v3, "emailAddress":Ljava/lang/String;
    sget-object v7, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    aget-object v7, v7, v11

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 869
    .local v4, "imageIndex":I
    const/4 v6, 0x0

    .line 872
    .local v6, "pictureData":Ljava/lang/String;
    const-string v7, "gal_search_show_more"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 873
    iput-boolean v9, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    goto :goto_1

    .line 878
    :cond_4
    if-eq v4, v10, :cond_5

    .line 879
    invoke-interface {p2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 883
    :cond_5
    invoke-direct {p0, v3, p1, v6}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isDuplicateAddPictureDate(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 884
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v8

    aput-object v3, v7, v9

    aput-object v6, v7, v11

    invoke-virtual {v5, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 885
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 889
    .end local v2    # "displayName":Ljava/lang/String;
    .end local v3    # "emailAddress":Ljava/lang/String;
    .end local v4    # "imageIndex":I
    .end local v6    # "pictureData":Ljava/lang/String;
    :cond_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    move-object p2, v5

    .line 891
    goto :goto_0
.end method

.method public static setBackupOfSearchedString(Ljava/lang/String;)V
    .locals 0
    .param p0, "backupOfSearchedString"    # Ljava/lang/String;

    .prologue
    .line 607
    sput-object p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->BackupOfSearchedString:Ljava/lang/String;

    .line 608
    return-void
.end method


# virtual methods
.method public RIemailAddress(JLjava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 9
    .param p1, "acckey"    # J
    .param p3, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    .line 358
    if-nez p3, :cond_0

    const-string v7, ""

    .line 359
    .local v7, "filter":Ljava/lang/String;
    :goto_0
    const/4 v8, 0x0

    .line 362
    .local v8, "ric":Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->RIC_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 363
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$EmailQuery;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 368
    .end local v1    # "uri":Landroid/net/Uri;
    :goto_1
    return-object v8

    .line 358
    .end local v7    # "filter":Ljava/lang/String;
    .end local v8    # "ric":Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 364
    .restart local v7    # "filter":Ljava/lang/String;
    .restart local v8    # "ric":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 365
    .local v6, "e":Ljava/lang/Exception;
    const/4 v8, 0x0

    goto :goto_1
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    const/4 v10, -0x1

    .line 541
    invoke-virtual {p0, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v7

    check-cast v7, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 542
    .local v7, "directoryPartition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-object v2, v7, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryType:Ljava/lang/String;

    .line 543
    .local v2, "directoryType":Ljava/lang/String;
    iget-object v3, v7, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 544
    .local v3, "directoryName":Ljava/lang/String;
    iget-boolean v0, v7, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {p0, p1, v2, v3}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->bindViewLoading(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    :goto_0
    return-void

    .line 547
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 548
    .local v4, "displayName":Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 551
    .local v5, "emailAddress":Ljava/lang/String;
    sget-object v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$EmailQuery1;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 552
    .local v8, "imageIndex":I
    sget-boolean v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isEnableGroupSearch:Z

    if-eqz v0, :cond_1

    .line 553
    const-string v0, "system_id"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 555
    .local v9, "indexSystemId":I
    if-eq v9, v10, :cond_1

    .line 556
    const-string v5, "(Group)"

    .line 559
    .end local v9    # "indexSystemId":I
    :cond_1
    const/4 v6, 0x0

    .line 562
    .local v6, "pictureData":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 563
    :cond_2
    move-object v4, v5

    .line 565
    const/4 v5, 0x0

    .line 569
    :cond_3
    if-eq v8, v10, :cond_4

    .line 570
    invoke-interface {p3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_4
    move-object v0, p0

    move-object v1, p1

    .line 575
    invoke-virtual/range {v0 .. v6}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->bindView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract bindView(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract bindViewLoading(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public disableOnlineSearch(Z)V
    .locals 0
    .param p1, "disable"    # Z

    .prologue
    .line 495
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isOnlineSearchDisabled:Z

    .line 496
    return-void
.end method

.method public doGalSearch(I)V
    .locals 7
    .param p1, "partitionIndex"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 747
    if-lez p1, :cond_1

    .line 749
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 750
    .local v2, "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->clearPartitions()V

    .line 751
    iget-object v3, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    iget-object v4, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->getLimit()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->setLimit(I)V

    .line 752
    iput-boolean v6, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    .line 753
    sget-object v3, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->BackupOfSearchedString:Ljava/lang/String;

    iput-object v3, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 754
    iget-object v3, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    sget-object v4, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->BackupOfSearchedString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 755
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->showSearchPendingIfNotComplete(I)V

    .line 779
    .end local v2    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_0
    return-void

    .line 759
    :cond_1
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->clearPartitions()V

    .line 761
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v0

    .line 762
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 763
    invoke-virtual {p0, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 764
    .restart local v2    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    iput-boolean v5, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    .line 762
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 766
    .end local v2    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    .line 767
    invoke-virtual {p0, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 768
    .restart local v2    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-object v3, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    const-string v4, "com.android.exchange"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    const-string v4, "com.android.email"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 770
    :cond_3
    iget-object v3, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    iget-object v4, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    invoke-virtual {v4}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->getLimit()I

    move-result v4

    add-int/lit8 v4, v4, 0x14

    invoke-virtual {v3, v4}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->setLimit(I)V

    .line 771
    iput-boolean v6, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    .line 772
    sget-object v3, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->BackupOfSearchedString:Ljava/lang/String;

    iput-object v3, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 773
    iget-object v3, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    sget-object v4, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->BackupOfSearchedString:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 774
    iput-boolean v5, v2, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    .line 775
    invoke-virtual {p0, v1}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->showSearchPendingIfNotComplete(I)V

    .line 766
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 596
    new-instance v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DefaultPartitionFilter;-><init>(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$1;)V

    return-object v0
.end method

.method public getGroupNameCursor(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 8
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v4, 0x0

    .line 1121
    const/4 v6, 0x0

    .line 1124
    .local v6, "groupCursor":Landroid/database/Cursor;
    if-eqz p1, :cond_0

    .line 1125
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1129
    .local v7, "inputText":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Groups;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "title"

    aput-object v5, v2, v3

    const/4 v3, 0x1

    const-string v5, "account_type"

    aput-object v5, v2, v3

    const/4 v3, 0x2

    const-string v5, "system_id"

    aput-object v5, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(title like \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "%%\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1134
    return-object v6

    .line 1127
    .end local v7    # "inputText":Ljava/lang/String;
    :cond_0
    const-string v7, ""

    .restart local v7    # "inputText":Ljava/lang/String;
    goto :goto_0
.end method

.method protected getItemViewType(II)I
    .locals 2
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 524
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 525
    .local v0, "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-boolean v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract inflateItemView(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected abstract inflateItemViewLoading(Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected isEnabled(II)Z
    .locals 1
    .param p1, "partitionIndex"    # I
    .param p2, "position"    # I

    .prologue
    .line 587
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isLoading(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 531
    invoke-virtual {p0, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 532
    .local v0, "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-boolean v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_0

    .line 533
    invoke-virtual {p0, p5}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->inflateItemViewLoading(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 535
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0, p5}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->inflateItemView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected onDirectoryLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 23
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "directoryCursor"    # Landroid/database/Cursor;
    .param p3, "defaultPartitionCursor"    # Landroid/database/Cursor;

    .prologue
    .line 617
    if-eqz p2, :cond_5

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    .line 619
    .local v14, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v17, 0x0

    .line 620
    .local v17, "preferredDirectory":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 621
    .local v6, "directories":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;>;"
    :cond_0
    :goto_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v20

    if-eqz v20, :cond_3

    .line 622
    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 626
    .local v10, "id":J
    const-wide/16 v20, 0x1

    cmp-long v20, v10, v20

    if-eqz v20, :cond_0

    .line 630
    new-instance v16, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    invoke-direct/range {v16 .. v16}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;-><init>()V

    .line 631
    .local v16, "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    move-object/from16 v0, v16

    iput-wide v10, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryId:J

    .line 632
    const/16 v20, 0x3

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 633
    const/16 v20, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->accountName:Ljava/lang/String;

    .line 634
    const/16 v20, 0x2

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    .line 635
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->moreResultIsRemained:Z

    .line 636
    const/16 v20, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 637
    .local v15, "packageName":Ljava/lang/String;
    const/16 v20, 0x5

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 638
    .local v18, "resourceId":I
    if-eqz v15, :cond_1

    if-eqz v18, :cond_1

    .line 640
    :try_start_0
    invoke-virtual {v14, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v19

    .line 642
    .local v19, "resources":Landroid/content/res/Resources;
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryType:Ljava/lang/String;

    .line 643
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryType:Ljava/lang/String;

    move-object/from16 v20, v0

    if-nez v20, :cond_1

    .line 644
    const-string v20, "BaseEmailAddressAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot resolve directory name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    .end local v19    # "resources":Landroid/content/res/Resources;
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->accountName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_2

    .line 658
    move-object/from16 v17, v16

    goto/16 :goto_0

    .line 647
    :catch_0
    move-exception v7

    .line 648
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v20, "BaseEmailAddressAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Cannot resolve directory name: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "@"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 660
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    move-object/from16 v0, v16

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 664
    .end local v10    # "id":J
    .end local v15    # "packageName":Ljava/lang/String;
    .end local v16    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    .end local v18    # "resourceId":I
    :cond_3
    if-eqz v17, :cond_4

    .line 665
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v17

    invoke-interface {v6, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 668
    :cond_4
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 669
    .restart local v16    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->addPartition(Lcom/android/common/widget/CompositeCursorAdapter$Partition;)V

    goto :goto_2

    .line 673
    .end local v6    # "directories":Ljava/util/List;, "Ljava/util/List<Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;>;"
    .end local v9    # "i$":Ljava/util/Iterator;
    .end local v14    # "packageManager":Landroid/content/pm/PackageManager;
    .end local v16    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    .end local v17    # "preferredDirectory":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v4

    .line 674
    .local v4, "count":I
    const/4 v12, 0x0

    .line 678
    .local v12, "limit":I
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->setNotificationsEnabled(Z)V

    .line 681
    if-eqz p3, :cond_6

    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v20

    if-lez v20, :cond_6

    .line 682
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/common/widget/CompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 685
    :cond_6
    if-nez p3, :cond_9

    const/4 v5, 0x0

    .line 688
    .local v5, "defaultPartitionCount":I
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mPreferredMaxResultCount:I

    move/from16 v20, v0

    sub-int v12, v20, v5

    .line 692
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_4
    if-ge v8, v4, :cond_b

    .line 693
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 694
    .restart local v16    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 696
    if-gtz v12, :cond_7

    sget-boolean v20, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v20, :cond_a

    .line 697
    :cond_7
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    move/from16 v20, v0

    if-nez v20, :cond_8

    .line 698
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    .line 699
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 692
    :cond_8
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 685
    .end local v5    # "defaultPartitionCount":I
    .end local v8    # "i":I
    .end local v16    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_9
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    goto :goto_3

    .line 702
    .restart local v5    # "defaultPartitionCount":I
    .restart local v8    # "i":I
    .restart local v16    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_a
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    .line 703
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v8, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 707
    .end local v5    # "defaultPartitionCount":I
    .end local v8    # "i":I
    .end local v16    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :catchall_0
    move-exception v20

    const/16 v21, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->setNotificationsEnabled(Z)V

    throw v20

    .restart local v5    # "defaultPartitionCount":I
    .restart local v8    # "i":I
    :cond_b
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->setNotificationsEnabled(Z)V

    .line 712
    const/4 v8, 0x1

    :goto_6
    if-ge v8, v4, :cond_11

    .line 713
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v16

    check-cast v16, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 716
    .restart local v16    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isOnlineSearchDisabled:Z

    move/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_d

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->accountType:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "com.android.exchange"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_d

    .line 712
    :cond_c
    :goto_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 721
    :cond_d
    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    move/from16 v20, v0

    if-eqz v20, :cond_10

    .line 722
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 723
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v8, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    .line 724
    .local v13, "msg":Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const-wide/16 v21, 0x3e8

    move-object/from16 v0, v20

    move-wide/from16 v1, v21

    invoke-virtual {v0, v13, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 725
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    if-nez v20, :cond_e

    .line 726
    new-instance v20, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->directoryId:J

    move-wide/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-wide/from16 v2, v21

    invoke-direct {v0, v1, v8, v2, v3}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;-><init>(Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;IJ)V

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    .line 728
    :cond_e
    sget-boolean v20, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v20, :cond_f

    .line 730
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    const/16 v21, 0x14

    invoke-virtual/range {v20 .. v21}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->setLimit(I)V

    .line 736
    :goto_8
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 734
    :cond_f
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;->setLimit(I)V

    goto :goto_8

    .line 738
    .end local v13    # "msg":Landroid/os/Message;
    :cond_10
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    .line 740
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->filter:Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartitionFilter;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 744
    .end local v16    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_11
    return-void
.end method

.method public onPartitionLoadFinished(Ljava/lang/CharSequence;ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 801
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v1

    if-ge p2, v1, :cond_4

    .line 802
    invoke-virtual {p0, p2}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 807
    .local v0, "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-boolean v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 809
    iget-object v1, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 810
    if-eqz p1, :cond_0

    .line 811
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->setBackupOfSearchedString(Ljava/lang/String;)V

    .line 812
    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->removeDuplicatesAndTruncate(ILandroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 813
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    .line 815
    sget-boolean v1, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->ExpandResultMaxAndShowMoreMode:Z

    if-eqz v1, :cond_2

    .line 817
    iget-object v2, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mSynchronizer:Ljava/lang/Object;

    monitor-enter v2

    .line 818
    :try_start_0
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isAllPartitionLoadFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->isAllPartitionEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 820
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->addShowMoreButtonAtlastPatition()V

    .line 822
    :cond_1
    monitor-exit v2

    .line 834
    .end local v0    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_2
    :goto_0
    return-void

    .line 822
    .restart local v0    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 827
    :cond_3
    if-eqz p3, :cond_2

    .line 828
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 831
    .end local v0    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_4
    if-eqz p3, :cond_2

    .line 832
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public setAccount(Landroid/accounts/Account;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    .line 483
    return-void
.end method

.method public setAccount(Landroid/accounts/Account;Ljava/lang/Long;)V
    .locals 0
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "AccId"    # Ljava/lang/Long;

    .prologue
    .line 489
    iput-object p1, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->mAccount:Landroid/accounts/Account;

    .line 490
    iput-object p2, p0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->Acc_Id:Ljava/lang/Long;

    .line 491
    return-void
.end method

.method showSearchPendingIfNotComplete(I)V
    .locals 2
    .param p1, "partitionIndex"    # I

    .prologue
    .line 782
    invoke-virtual {p0}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartitionCount()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 783
    invoke-virtual {p0, p1}, Lcom/android/common/widget/CompositeCursorAdapter;->getPartition(I)Lcom/android/common/widget/CompositeCursorAdapter$Partition;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;

    .line 784
    .local v0, "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    iget-boolean v1, v0, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;->loading:Z

    if-eqz v1, :cond_0

    .line 785
    invoke-direct {p0}, Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec;->createLoadingCursor()Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/common/widget/CompositeCursorAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 788
    .end local v0    # "partition":Lcom/sec/android/app/contacts/util/BaseEmailAddressAdapterSec$DirectoryPartition;
    :cond_0
    return-void
.end method
