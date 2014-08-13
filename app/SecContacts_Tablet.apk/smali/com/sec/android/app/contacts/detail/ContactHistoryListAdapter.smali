.class public Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
.super Landroid/widget/ResourceCursorAdapter;
.source "ContactHistoryListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;,
        Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;
    }
.end annotation


# static fields
.field static final LOGS_CACHED_NAME_COLUMN_INDEX:I = 0x3

.field static final LOGS_DATE_COLUMN_INDEX:I = 0x5

.field static final LOGS_DURATION_COLUMN_INDEX:I = 0x9

.field static final LOGS_ID_COLUMN_INDEX:I = 0x0

.field static final LOGS_LOG_TYPE_COLUMN_INDEX:I = 0x1

.field static final LOGS_MESSAGE_CONTENT_COLUMN_INDEX:I = 0x8

.field static final LOGS_MESSAGE_ID_COLUMN_INDEX:I = 0x6

.field static final LOGS_MESSAGE_SUBJECT_COLUMN_INDEX:I = 0x7

.field static final LOGS_NUMBER_COLUMN_INDEX:I = 0x4

.field static final LOGS_TYPE_COLUMN_INDEX:I = 0x2

.field private static final ONEDAYMILLIS:J = 0x5265c00L

.field private static PAYPHONE_NUMBER:Ljava/lang/String;

.field private static PRIVATE_NUMBER:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static UNKNOWN_NUMBER:Ljava/lang/String;

.field private static isVoLTEEnabled:Z


# instance fields
.field mContactInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFragment:Landroid/app/Fragment;

.field private mIndexer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsDeleteMode:Z

.field private mIsSmsView:Z

.field private mLoading:Z

.field private mMsgId:J

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private final mRequests:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSdfNow:Ljava/text/SimpleDateFormat;

.field private mSections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mVoLTEStateTracker:Lcom/android/contacts/VoLTEStateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "ContactHistoryListAdapter"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    .line 101
    const-string v0, "-1"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->UNKNOWN_NUMBER:Ljava/lang/String;

    .line 102
    const-string v0, "-2"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PRIVATE_NUMBER:Ljava/lang/String;

    .line 103
    const-string v0, "-3"

    sput-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PAYPHONE_NUMBER:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->isVoLTEEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/ResourceCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;)V

    .line 113
    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mLoading:Z

    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    .line 277
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 125
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    .line 126
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    .line 127
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    .line 130
    const v0, 0x7f040063

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setViewResource(I)V

    .line 131
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setDateFormat()V

    .line 140
    return-void
.end method

.method private IsExistedSmsMms(JI)Z
    .locals 10
    .param p1, "messageId"    # J
    .param p3, "type"    # I

    .prologue
    const/16 v6, 0x12c

    const/16 v4, 0xc8

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 943
    const/4 v7, 0x0

    .line 944
    .local v7, "cursor":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 945
    .local v1, "cr":Landroid/content/ContentResolver;
    if-eq p3, v6, :cond_0

    if-eq p3, v4, :cond_0

    move v0, v8

    .line 975
    :goto_0
    return v0

    .line 949
    :cond_0
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-gtz v0, :cond_1

    move v0, v8

    .line 950
    goto :goto_0

    .line 953
    :cond_1
    if-ne p3, v6, :cond_3

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v9, [Ljava/lang/String;

    const-string v4, "thread_id"

    aput-object v4, v3, v8

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 963
    :cond_2
    :goto_1
    if-nez v7, :cond_4

    move v0, v8

    .line 964
    goto :goto_0

    .line 957
    :cond_3
    if-ne p3, v4, :cond_2

    .line 958
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "thread_id"

    aput-object v4, v3, v8

    const-string v4, "m_type"

    aput-object v4, v3, v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1

    .line 968
    :cond_4
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v9, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 969
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 973
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v9

    goto :goto_0

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v8

    .line 975
    goto :goto_0

    .line 973
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    return v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/app/Fragment;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJLjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # J
    .param p4, "x3"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifySmsMmsForTablet(IJLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;J)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifyEmail(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;
    .param p1, "x1"    # I
    .param p2, "x2"    # J

    .prologue
    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->verifySmsMms(IJ)V

    return-void
.end method

.method private calcSection(JI)Ljava/lang/String;
    .locals 7
    .param p1, "lDate"    # J
    .param p3, "id"    # I

    .prologue
    const/4 v4, 0x0

    .line 554
    const/4 v0, 0x0

    .line 555
    .local v0, "date":Ljava/lang/String;
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 556
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e02ac

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 562
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 563
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    .end local v0    # "date":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 557
    .restart local v0    # "date":Ljava/lang/String;
    :cond_0
    const-wide/32 v5, 0x5265c00

    add-long/2addr v5, p1

    invoke-static {v5, v6}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 558
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0e02ad

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 560
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 566
    :cond_2
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 567
    .local v1, "index":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_3

    move-object v0, v4

    .line 568
    goto :goto_1

    .line 569
    :cond_3
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 570
    .local v2, "oldId":I
    if-le p3, v2, :cond_4

    .line 571
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 572
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 573
    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v0, v4

    .line 576
    goto :goto_1
.end method

.method private clearCache()V
    .locals 2

    .prologue
    .line 172
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 174
    monitor-exit v1

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private enqueueRequest(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "logType"    # I

    .prologue
    .line 609
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;

    invoke-direct {v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;-><init>()V

    .line 610
    .local v0, "ciq":Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;
    iput-object p1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;->number:Ljava/lang/String;

    .line 611
    iput-object p2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;->name:Ljava/lang/String;

    .line 612
    iput p3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$LogInfo;->logType:I

    .line 613
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    monitor-enter v2

    .line 614
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 615
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mRequests:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 616
    monitor-exit v2

    .line 617
    return-void

    .line 616
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private findThreadId(Landroid/content/Context;)J
    .locals 13
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v8, -0x1

    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 526
    const/4 v7, 0x0

    .line 527
    .local v7, "cursor":Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 528
    .local v1, "cr":Landroid/content/ContentResolver;
    iget-wide v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    const-wide/16 v10, 0x0

    cmp-long v0, v2, v10

    if-gtz v0, :cond_0

    move-wide v2, v8

    .line 550
    :goto_0
    return-wide v2

    .line 531
    :cond_0
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    if-eqz v0, :cond_1

    .line 532
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-array v3, v12, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v10, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 540
    :goto_1
    if-nez v7, :cond_2

    move-wide v2, v8

    .line 541
    goto :goto_0

    .line 536
    :cond_1
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x2

    new-array v3, v0, [Ljava/lang/String;

    const-string v0, "thread_id"

    aput-object v0, v3, v4

    const-string v0, "m_type"

    aput-object v0, v3, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v10, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p1

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    goto :goto_1

    .line 544
    :cond_2
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v12, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 545
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 548
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-wide v2, v8

    .line 550
    goto :goto_0

    .line 548
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getFormatDuration(J)Ljava/lang/String;
    .locals 9
    .param p1, "elapsedSeconds"    # J

    .prologue
    .line 911
    const-wide/16 v1, 0x0

    .line 912
    .local v1, "hours":J
    const-wide/16 v3, 0x0

    .line 913
    .local v3, "minutes":J
    const-wide/16 v5, 0x0

    .line 914
    .local v5, "seconds":J
    const-wide/16 v7, 0xe10

    cmp-long v7, p1, v7

    if-ltz v7, :cond_0

    .line 915
    const-wide/16 v7, 0xe10

    div-long v1, p1, v7

    .line 916
    const-wide/16 v7, 0xe10

    mul-long/2addr v7, v1

    sub-long/2addr p1, v7

    .line 918
    :cond_0
    const-wide/16 v7, 0x3c

    cmp-long v7, p1, v7

    if-ltz v7, :cond_1

    .line 919
    const-wide/16 v7, 0x3c

    div-long v3, p1, v7

    .line 920
    const-wide/16 v7, 0x3c

    mul-long/2addr v7, v3

    sub-long/2addr p1, v7

    .line 922
    :cond_1
    move-wide v5, p1

    .line 923
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 924
    .local v0, "duration":Ljava/lang/StringBuffer;
    const-wide/16 v7, 0xa

    cmp-long v7, v1, v7

    if-gez v7, :cond_2

    .line 925
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 927
    :cond_2
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 928
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 929
    const-wide/16 v7, 0xa

    cmp-long v7, v3, v7

    if-gez v7, :cond_3

    .line 930
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 932
    :cond_3
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 933
    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 934
    const-wide/16 v7, 0xa

    cmp-long v7, v5, v7

    if-gez v7, :cond_4

    .line 935
    const/16 v7, 0x30

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 937
    :cond_4
    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 938
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;)V
    .locals 3
    .param p1, "logType"    # I
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "contents"    # Ljava/lang/String;
    .param p4, "cache"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 783
    sparse-switch p1, :sswitch_data_0

    .line 812
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 815
    :goto_0
    return-void

    .line 785
    :sswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 786
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 789
    :goto_1
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 788
    :cond_0
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    const v1, 0x7f0e02ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 793
    :sswitch_1
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 794
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 797
    :cond_1
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 801
    :sswitch_2
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 802
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 803
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 804
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 805
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 808
    :cond_3
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 783
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
        0x190 -> :sswitch_0
    .end sparse-switch
.end method

.method private setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Z)V
    .locals 3
    .param p1, "logType"    # I
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "contents"    # Ljava/lang/String;
    .param p4, "cache"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
    .param p5, "isExisted"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 819
    sparse-switch p1, :sswitch_data_0

    .line 848
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 851
    :goto_0
    return-void

    .line 821
    :sswitch_0
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 822
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 825
    :goto_1
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 824
    :cond_0
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    const v1, 0x7f0e02ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 829
    :sswitch_1
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p5, :cond_1

    .line 830
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 833
    :cond_1
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 837
    :sswitch_2
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p5, :cond_2

    .line 838
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 840
    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p5, :cond_3

    .line 841
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 842
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 844
    :cond_3
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 819
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
        0x190 -> :sswitch_0
    .end sparse-switch
.end method

.method private setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;ZZ)V
    .locals 3
    .param p1, "logType"    # I
    .param p2, "subject"    # Ljava/lang/String;
    .param p3, "contents"    # Ljava/lang/String;
    .param p4, "cache"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
    .param p5, "dispMsgContents"    # Z
    .param p6, "dispEmailContents"    # Z

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 856
    sparse-switch p1, :sswitch_data_0

    .line 897
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 900
    :goto_0
    return-void

    .line 858
    :sswitch_0
    if-eqz p6, :cond_1

    .line 859
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 860
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 863
    :goto_1
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 862
    :cond_0
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    const v1, 0x7f0e02ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 865
    :cond_1
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 870
    :sswitch_1
    if-eqz p5, :cond_3

    .line 871
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 872
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 873
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 875
    :cond_2
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 877
    :cond_3
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 882
    :sswitch_2
    if-eqz p5, :cond_6

    .line 883
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 884
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 885
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 886
    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 887
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 890
    :cond_5
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 892
    :cond_6
    iget-object v0, p4, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 856
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_2
        0x12c -> :sswitch_1
        0x190 -> :sswitch_0
    .end sparse-switch
.end method

.method private setDurationText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;I)V
    .locals 4
    .param p1, "cache"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
    .param p2, "duration"    # Ljava/lang/String;
    .param p3, "logType"    # I

    .prologue
    .line 647
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Contact_DisableCallDuration"

    invoke-virtual {v1, v2}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    .line 648
    .local v0, "disableCallDuration":Z
    if-nez v0, :cond_1

    const/16 v1, 0x64

    if-eq p3, v1, :cond_0

    const/16 v1, 0x1f4

    if-eq p3, v1, :cond_0

    const/16 v1, 0x320

    if-eq p3, v1, :cond_0

    const/16 v1, 0x3e8

    if-ne p3, v1, :cond_1

    .line 650
    :cond_0
    iget-object v1, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 651
    iget-object v1, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getFormatDuration(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 655
    :goto_0
    return-void

    .line 653
    :cond_1
    iget-object v1, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setHeaderView(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;ILjava/lang/String;)V
    .locals 9
    .param p1, "cache"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
    .param p2, "id"    # I
    .param p3, "time"    # Ljava/lang/String;

    .prologue
    .line 620
    iget-object v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 622
    :try_start_0
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 623
    .local v3, "lTime":J
    invoke-direct {p0, v3, v4, p2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->calcSection(JI)Ljava/lang/String;

    move-result-object v5

    .line 624
    .local v5, "sectionName":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 625
    iget-object v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 626
    iget-boolean v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    if-eqz v7, :cond_0

    .line 627
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    check-cast v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;

    .line 628
    .local v1, "fragment":Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
    invoke-virtual {v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;->updateAllCheckState()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    .end local v1    # "fragment":Lcom/sec/android/app/contacts/detail/ContactHistoryListFragment;
    .end local v3    # "lTime":J
    .end local v5    # "sectionName":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 637
    iget-object v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 638
    .local v2, "index":I
    iget-object v7, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const v8, 0x7f0901f0

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 639
    .local v6, "title":Landroid/widget/TextView;
    iget-object v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    iget-object v7, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 644
    .end local v2    # "index":I
    .end local v6    # "title":Landroid/widget/TextView;
    :goto_1
    return-void

    .line 631
    :catch_0
    move-exception v0

    .line 632
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 642
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    iget-object v7, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setLogTypeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V
    .locals 2
    .param p1, "cache"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
    .param p2, "logType"    # I

    .prologue
    const v1, 0x7f020665

    .line 691
    sparse-switch p2, :sswitch_data_0

    .line 753
    :goto_0
    return-void

    .line 693
    :sswitch_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f02076e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 697
    :sswitch_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 698
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 699
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f020666

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 701
    :cond_0
    const-string v0, "feature_kt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 704
    :cond_1
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f020664

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 707
    :cond_2
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 713
    :sswitch_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 714
    const-string v0, "feature_kor"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 715
    const-string v0, "feature_skt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 716
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f02066b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 717
    :cond_3
    const-string v0, "feature_kt"

    invoke-static {v0}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 718
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f020669

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 720
    :cond_4
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f02066a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 723
    :cond_5
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f020769

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 728
    :sswitch_3
    sget-boolean v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->isVoLTEEnabled:Z

    if-eqz v0, :cond_6

    .line 730
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 734
    :cond_6
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f02075e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 739
    :sswitch_4
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f020764

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 742
    :sswitch_5
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f02075f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 745
    :sswitch_6
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f020667

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 748
    :sswitch_7
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    const v1, 0x7f020773

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 691
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_5
        0x12c -> :sswitch_4
        0x190 -> :sswitch_6
        0x1f4 -> :sswitch_2
        0x320 -> :sswitch_3
        0x384 -> :sswitch_7
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method private setNumber(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 769
    if-eqz p2, :cond_0

    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->UNKNOWN_NUMBER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 770
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 771
    move-object p2, p3

    .line 779
    :cond_1
    :goto_0
    return-object p2

    .line 772
    :cond_2
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PRIVATE_NUMBER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 773
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 774
    move-object p2, p3

    goto :goto_0

    .line 775
    :cond_3
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PAYPHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 776
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e009e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 777
    move-object p2, p3

    goto :goto_0
.end method

.method private setNumberText(Landroid/view/View;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "cache"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
    .param p3, "number"    # Ljava/lang/String;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "logType"    # I

    .prologue
    .line 757
    if-eqz p3, :cond_0

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->UNKNOWN_NUMBER:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PRIVATE_NUMBER:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->PAYPHONE_NUMBER:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 759
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setNumber(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 761
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 762
    .local v0, "numberbuff":Ljava/lang/StringBuffer;
    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 763
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    .line 764
    iget-object v1, p2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tNumber:Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v1, p2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tSubject:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 766
    return-void
.end method

.method private setSendTypeIcon(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V
    .locals 2
    .param p1, "cache"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
    .param p2, "type"    # I

    .prologue
    .line 658
    packed-switch p2, :pswitch_data_0

    .line 674
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f02072f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 677
    :goto_0
    return-void

    .line 660
    :pswitch_0
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f020756

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 663
    :pswitch_1
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f020758

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 666
    :pswitch_2
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f020755

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 670
    :pswitch_3
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    const v1, 0x7f020757

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 658
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private setTimeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;)V
    .locals 7
    .param p1, "cache"    # Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
    .param p2, "time"    # Ljava/lang/String;

    .prologue
    .line 681
    if-eqz p2, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 684
    :cond_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 685
    .local v1, "lTime":J
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    const/16 v5, 0x101

    move-wide v3, v1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v6

    .line 687
    .local v6, "dateClause":Ljava/lang/CharSequence;
    iget-object v0, p1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tTime:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateContactInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "logType"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 588
    const/16 v1, 0x258

    if-eq p1, v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;

    .line 591
    .local v0, "info":Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;
    if-nez v0, :cond_1

    .line 592
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v2, "info null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;

    .line 596
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContactInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    invoke-direct {p0, p2, p3, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;I)V

    .line 606
    .end local v0    # "info":Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;
    :cond_0
    :goto_0
    return-void

    .line 598
    .restart local v0    # "info":Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;
    :cond_1
    sget-object v1, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->EMPTY:Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;

    if-eq v0, v1, :cond_0

    .line 599
    iget-object v1, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->name:Ljava/lang/String;

    invoke-static {v1, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 601
    invoke-direct {p0, p2, p3, p1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->enqueueRequest(Ljava/lang/String;Ljava/lang/String;I)V

    .line 603
    :cond_2
    iget-object p3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ContactInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method private verifyEmail(J)V
    .locals 11
    .param p1, "messageId"    # J

    .prologue
    const/4 v2, 0x0

    .line 500
    const-string v0, "content://com.android.email.provider/message"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 501
    .local v1, "mUri":Landroid/net/Uri;
    const-string v9, "_id"

    .line 502
    .local v9, "id":Ljava/lang/String;
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 504
    .local v8, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_1

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 505
    const-string v6, "com.android.email.MessageView_message_id"

    .line 506
    .local v6, "EXTRA_MESSAGE_ID":Ljava/lang/String;
    const-string v7, "com.android.email.LogProvider"

    .line 507
    .local v7, "LOG_VIEW_ACTION":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "com.android.email"

    const-string v2, "com.android.email.activity.Welcome"

    invoke-virtual {v10, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 509
    const-string v0, "vnd.android.cursor.item/email"

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 510
    invoke-virtual {v10, v6, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 511
    invoke-virtual {v10, v7, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 512
    const v0, 0x10008000

    invoke-virtual {v10, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 513
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v10}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 521
    .end local v6    # "EXTRA_MESSAGE_ID":Ljava/lang/String;
    .end local v7    # "LOG_VIEW_ACTION":Ljava/lang/String;
    .end local v10    # "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v8, :cond_0

    .line 522
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 523
    :cond_0
    return-void

    .line 515
    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No Email log found for email with messageId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0349

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private verifySmsMms(IJ)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "messageId"    # J

    .prologue
    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    .line 399
    const/4 v0, 0x0

    .line 400
    .local v0, "isThreadView":Z
    const-wide/16 v2, -0x1

    .line 401
    .local v2, "threadId":J
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 402
    const/16 v4, 0x12c

    if-ne p1, v4, :cond_1

    cmp-long v4, p2, v5

    if-lez v4, :cond_1

    .line 403
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 404
    iput-wide p2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    .line 409
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->findThreadId(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v4, v2, v5

    if-lez v4, :cond_4

    .line 410
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 411
    .local v1, "smsMmsIntent":Landroid/content/Intent;
    const-string v4, "thread_id"

    invoke-virtual {v1, v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 412
    const-string v4, "vnd.android-dir/mms-sms"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 413
    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 414
    if-eqz v0, :cond_2

    .line 423
    :goto_1
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 429
    .end local v1    # "smsMmsIntent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 405
    :cond_1
    const/16 v4, 0xc8

    if-ne p1, v4, :cond_0

    cmp-long v4, p2, v5

    if-lez v4, :cond_0

    .line 406
    iput-boolean v7, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 407
    iput-wide p2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    goto :goto_0

    .line 416
    .restart local v1    # "smsMmsIntent":Landroid/content/Intent;
    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    if-eqz v4, :cond_3

    .line 417
    const-string v4, "select_id"

    iget-wide v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 418
    const-string v4, "message_type"

    const-string v5, "sms"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 420
    :cond_3
    const-string v4, "select_id"

    iget-wide v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 421
    const-string v4, "message_type"

    const-string v5, "mms"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 425
    .end local v1    # "smsMmsIntent":Landroid/content/Intent;
    :cond_4
    iget-object v4, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0349

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private verifySmsMmsForTablet(IJLjava/lang/String;)V
    .locals 8
    .param p1, "type"    # I
    .param p2, "messageId"    # J
    .param p4, "logNum"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 468
    const/4 v0, 0x0

    .line 469
    .local v0, "isThreadView":Z
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 470
    const/16 v2, 0x12c

    if-ne p1, v2, :cond_1

    cmp-long v2, p2, v6

    if-lez v2, :cond_1

    .line 471
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 472
    iput-wide p2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    .line 477
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->findThreadId(Landroid/content/Context;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-lez v2, :cond_4

    .line 479
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    const-string v3, "smsto"

    const/4 v4, 0x0

    invoke-static {v3, p4, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 481
    .local v1, "smsMmsIntent":Landroid/content/Intent;
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 482
    if-eqz v0, :cond_2

    .line 491
    :goto_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 497
    .end local v1    # "smsMmsIntent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 473
    :cond_1
    const/16 v2, 0xc8

    if-ne p1, v2, :cond_0

    cmp-long v2, p2, v6

    if-lez v2, :cond_0

    .line 474
    iput-boolean v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    .line 475
    iput-wide p2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    goto :goto_0

    .line 484
    .restart local v1    # "smsMmsIntent":Landroid/content/Intent;
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsSmsView:Z

    if-eqz v2, :cond_3

    .line 485
    const-string v2, "select_id"

    iget-wide v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 486
    const-string v2, "message_type"

    const-string v3, "sms"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 488
    :cond_3
    const-string v2, "select_id"

    iget-wide v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mMsgId:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 489
    const-string v2, "message_type"

    const-string v3, "mms"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 493
    .end local v1    # "smsMmsIntent":Landroid/content/Intent;
    :cond_4
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0349

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method private verifySmsMmsKorea(J)V
    .locals 5
    .param p1, "messageLongId"    # J

    .prologue
    .line 433
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.btb.intent.action.SHOW_MESSAGE_CONTENTS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 435
    .local v1, "smsMmsIntent":Landroid/content/Intent;
    long-to-int v0, p1

    .line 436
    .local v0, "msgId":I
    const-string v2, "MsgID"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 437
    const v2, 0x10008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 438
    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->isExistMsg(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 439
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 446
    :goto_0
    return-void

    .line 441
    :cond_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0349

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 28
    .param p1, "view"    # Landroid/view/View;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 232
    sget-object v3, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v4, "= bindView() ="

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;

    .line 234
    .local v5, "cache":Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 235
    .local v23, "id":I
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 236
    .local v8, "logType":I
    const/4 v3, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v27

    .line 237
    .local v27, "type":I
    const/4 v3, 0x3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 238
    .local v7, "name":Ljava/lang/String;
    const/4 v3, 0x4

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 239
    .local v6, "number":Ljava/lang/String;
    const/4 v3, 0x7

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 240
    .local v11, "subject":Ljava/lang/String;
    const/16 v3, 0x8

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 241
    .local v12, "contents":Ljava/lang/String;
    const/4 v3, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 242
    .local v26, "time":Ljava/lang/String;
    const/16 v3, 0x9

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 244
    .local v22, "duration":Ljava/lang/String;
    const/4 v3, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 245
    .local v24, "msgId":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-direct {v0, v1, v2, v8}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->IsExistedSmsMms(JI)Z

    move-result v14

    .line 247
    .local v14, "isExistedMsg":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v6, v7}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->updateContactInfo(ILjava/lang/String;Ljava/lang/String;)V

    .line 248
    iget-object v3, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 249
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    if-eqz v3, :cond_0

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    iget-object v4, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->unregisterForContextMenu(Landroid/view/View;)V

    .line 251
    iget-object v3, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 256
    :goto_0
    iget-object v3, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v3, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    move-object/from16 v0, p0

    move/from16 v1, v23

    move-object/from16 v2, v26

    invoke-direct {v0, v5, v1, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setHeaderView(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;ILjava/lang/String;)V

    .line 259
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-direct {v0, v5, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setSendTypeIcon(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V

    .line 260
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v5, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setTimeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;)V

    .line 261
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v5, v1, v8}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setDurationText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;I)V

    .line 262
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setLogTypeText(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;I)V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    .line 263
    invoke-direct/range {v3 .. v8}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setNumberText(Landroid/view/View;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Ljava/lang/String;Ljava/lang/String;I)V

    .line 265
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_RemoveLog4DeletedMsg"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v9, p0

    move v10, v8

    move-object v13, v5

    .line 267
    invoke-direct/range {v9 .. v14}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;Z)V

    .line 275
    :goto_1
    return-void

    .line 253
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    iget-object v4, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 254
    iget-object v3, v5, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    goto :goto_0

    .line 268
    :cond_1
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v3

    const-string v4, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 270
    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v15, p0

    move/from16 v16, v8

    move-object/from16 v17, v11

    move-object/from16 v18, v12

    move-object/from16 v19, v5

    invoke-direct/range {v15 .. v21}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;ZZ)V

    goto :goto_1

    .line 272
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v11, v12, v5}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->setContentsText(ILjava/lang/String;Ljava/lang/String;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;)V

    goto :goto_1
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 143
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSections:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 144
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 145
    invoke-direct {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->clearCache()V

    .line 146
    if-nez p1, :cond_0

    .line 147
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 169
    :goto_0
    return-void

    .line 150
    :cond_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eqz v5, :cond_2

    .line 151
    const/4 v5, -0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->move(I)Z

    .line 152
    const-string v0, ""

    .line 153
    .local v0, "date":Ljava/lang/String;
    const-wide/16 v2, 0x0

    .line 154
    .local v2, "lDate":J
    const/4 v1, 0x0

    .line 155
    .local v1, "id":I
    :cond_1
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 156
    const-string v5, "date"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    const-string v5, "_id"

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 159
    if-eqz v0, :cond_1

    const-string v5, "null"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 161
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 162
    invoke-direct {p0, v2, v3, v1}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->calcSection(JI)Ljava/lang/String;

    move-result-object v4

    .line 163
    .local v4, "sectionName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 164
    iget-object v5, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIndexer:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 168
    .end local v0    # "date":Ljava/lang/String;
    .end local v1    # "id":I
    .end local v2    # "lDate":J
    .end local v4    # "sectionName":Ljava/lang/String;
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ResourceCursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method public getLoading()Z
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mLoading:Z

    return v0
.end method

.method public getMode()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 196
    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "= getView() ="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 198
    .local v0, "mCursor":Landroid/database/Cursor;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 199
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could\'t move to cursor position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 202
    :cond_0
    if-eqz p2, :cond_1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 203
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2, v0, p3}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 207
    .local v1, "v":Landroid/view/View;
    :goto_0
    iget-object v2, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v2, v0}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 208
    return-object v1

    .line 205
    .end local v1    # "v":Landroid/view/View;
    :cond_2
    move-object v1, p2

    .restart local v1    # "v":Landroid/view/View;
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 191
    invoke-super {p0}, Landroid/widget/ResourceCursorAdapter;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method protected isExistMsg(I)Z
    .locals 11
    .param p1, "msgId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 449
    const-string v7, "content://com.sec.mms.provider/message"

    .line 450
    .local v7, "MESSAGE_URI":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 452
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 453
    .local v9, "messageID":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 455
    .local v6, "MESSAGE_ID_URI":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 457
    .local v8, "c":Landroid/database/Cursor;
    if-nez v8, :cond_0

    move v1, v10

    .line 465
    :goto_0
    return v1

    .line 459
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 460
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v1, v10

    .line 461
    goto :goto_0

    .line 463
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 465
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 213
    sget-object v2, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->TAG:Ljava/lang/String;

    const-string v3, "= newView() ="

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ResourceCursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 215
    .local v1, "view":Landroid/view/View;
    new-instance v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;-><init>(Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$1;)V

    .line 216
    .local v0, "cache":Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;
    const v2, 0x7f090184

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->headerView:Landroid/view/View;

    .line 217
    const v2, 0x7f090186

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iSendType:Landroid/widget/ImageView;

    .line 218
    const v2, 0x7f090187

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tTime:Landroid/widget/TextView;

    .line 219
    const v2, 0x7f090188

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tDuration:Landroid/widget/TextView;

    .line 220
    const v2, 0x7f090189

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tNumber:Landroid/widget/TextView;

    .line 221
    const v2, 0x7f09018a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tSubject:Landroid/widget/TextView;

    .line 222
    const v2, 0x7f09018b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->tContents:Landroid/widget/TextView;

    .line 223
    const v2, 0x7f09018c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->iType:Landroid/widget/ImageView;

    .line 224
    const v2, 0x7f090185

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->listItemView:Landroid/widget/LinearLayout;

    .line 225
    const v2, 0x7f09018d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v2, v0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter$ItemHistoryCache;->checkBox:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 226
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 227
    return-object v1
.end method

.method public setDateFormat()V
    .locals 3

    .prologue
    .line 582
    iget-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "date_format"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 584
    .local v0, "dateType":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/contacts/util/DateUtils;->getSettingDateFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mSdfNow:Ljava/text/SimpleDateFormat;

    .line 585
    return-void
.end method

.method public setFragment(Landroid/app/Fragment;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mFragment:Landroid/app/Fragment;

    .line 179
    return-void
.end method

.method public setLoading(Z)V
    .locals 0
    .param p1, "loading"    # Z

    .prologue
    .line 903
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mLoading:Z

    .line 904
    return-void
.end method

.method public setMode(Z)V
    .locals 0
    .param p1, "isDeleteMode"    # Z

    .prologue
    .line 182
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/detail/ContactHistoryListAdapter;->mIsDeleteMode:Z

    .line 183
    return-void
.end method
