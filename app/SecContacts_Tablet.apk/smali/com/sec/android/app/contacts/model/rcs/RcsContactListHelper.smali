.class public Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;
.super Ljava/lang/Object;
.source "RcsContactListHelper.java"

# interfaces
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACCOUNT_TYPE_RCSE:Ljava/lang/String; = "com.samsung.rcse"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

.field mRcsContactLookupSet:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mServicesObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper$1;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mServicesObserver:Landroid/database/ContentObserver;

    .line 51
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mContext:Landroid/content/Context;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mRcsContactLookupSet:Ljava/util/concurrent/ConcurrentHashMap;

    .line 53
    new-instance v0, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 54
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->doRcsContactQuery()V

    return-void
.end method

.method private doRcsContactQuery()V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 95
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    const-string v2, "doRcsContactQuery()"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mRcsContactLookupSet:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 97
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/sec/android/app/contacts/model/rcs/RcsContactProviderFields;->CONTACT_CAP_LOOKUP_URI:Landroid/net/Uri;

    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/RcsContactProviderFields;->CAP_PROJECTION:[Ljava/lang/String;

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method


# virtual methods
.method public isRcsContact(Landroid/net/Uri;)Z
    .locals 12
    .param p1, "lookupuri"    # Landroid/net/Uri;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 57
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v9

    .line 62
    .local v9, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 63
    .local v8, "lookup_key":Ljava/lang/String;
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checking if is RCS "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mRcsContactLookupSet:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    .line 65
    .local v7, "isRcs":Ljava/lang/Boolean;
    if-eqz v7, :cond_1

    .line 66
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found match, is RCS ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    .line 91
    :cond_0
    :goto_0
    return v10

    .line 69
    :cond_1
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 71
    .local v1, "uri":Landroid/net/Uri;
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v6, 0x0

    .line 75
    .local v6, "c":Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "service_name"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 81
    :goto_1
    if-eqz v6, :cond_0

    .line 82
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    .line 83
    .local v10, "ret":Z
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 84
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is RCS? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    if-eqz v10, :cond_0

    .line 86
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mRcsContactLookupSet:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v8, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 78
    .end local v10    # "ret":Z
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 102
    sget-object v5, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    const-string v6, "onQueryComplete"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    if-eqz p3, :cond_3

    .line 104
    const-string v5, "capabilities"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 105
    .local v1, "capsColumnIdx":I
    const-string v5, "contact_lookup_key"

    invoke-interface {p3, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 107
    .local v3, "lookupColumnIdx":I
    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 108
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 109
    .local v0, "caps":I
    and-int/lit8 v5, v0, 0x40

    if-lez v5, :cond_0

    const/4 v2, 0x1

    .line 110
    .local v2, "isRcs":Z
    :goto_1
    invoke-interface {p3, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 111
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 113
    sget-object v5, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "added to set: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v2    # "isRcs":Z
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 115
    .restart local v2    # "isRcs":Z
    .restart local v4    # "value":Ljava/lang/String;
    :cond_1
    sget-object v5, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    const-string v6, "Empty value"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 117
    .end local v0    # "caps":I
    .end local v2    # "isRcs":Z
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 124
    .end local v1    # "capsColumnIdx":I
    .end local v3    # "lookupColumnIdx":I
    :goto_2
    return-void

    .line 120
    :cond_3
    iget-object v5, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mRcsContactLookupSet:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    goto :goto_2
.end method

.method public startObserving()V
    .locals 4

    .prologue
    .line 127
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    const-string v1, "startObserving()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->doRcsContactQuery()V

    .line 129
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_LOOKUP_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mServicesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 134
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->TAG:Ljava/lang/String;

    const-string v1, "stopObserving()"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListHelper;->mServicesObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 136
    return-void
.end method
