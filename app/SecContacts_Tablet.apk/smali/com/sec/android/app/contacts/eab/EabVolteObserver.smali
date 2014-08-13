.class public Lcom/sec/android/app/contacts/eab/EabVolteObserver;
.super Landroid/database/ContentObserver;
.source "EabVolteObserver.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final mAvailCacheExp:Ljava/lang/String; = "mAvailCacheExp"

.field public static final mCapCacheExp:Ljava/lang/String; = "mCapCacheExp"

.field public static final mCapabilityoffSetting:Ljava/lang/String; = "mCapabilityoffSetting"

.field public static final mMaxEntries:Ljava/lang/String; = "mMaxEntries"

.field public static final mcapability_poll_interval:Ljava/lang/String; = "mcapability_poll_interval"

.field public static final msourcethrottlepublish:Ljava/lang/String; = "msourcethrottlepublish"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 51
    invoke-static {}, Lcom/android/contacts/ContactsApplication;->getInstance()Lcom/android/contacts/ContactsApplication;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .param p1, "selfChanged"    # Z

    .prologue
    const/4 v2, 0x0

    .line 57
    sget-object v0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChange :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/contacts/util/Constants;->DB_HIDDEN_MENU_TABLE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 62
    .local v6, "cursorVolte":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 64
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 66
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 68
    const-string v7, ""

    .line 70
    .local v7, "str":Ljava/lang/String;
    const-string v0, "mCapabilityoffSetting"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 72
    sget-object v0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CAPABILITY_DISCOVERY value  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->mContext:Landroid/content/Context;

    const-string v1, "Capability_Discovery"

    invoke-static {v0, v1, v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v0, "mCapCacheExp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 77
    sget-object v0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CAPABILITY_CACHE_EXPIRATION value  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->mContext:Landroid/content/Context;

    const-string v1, "CapCacheExp"

    invoke-static {v0, v1, v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v0, "mAvailCacheExp"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 83
    sget-object v0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AVAILIBILITY_CACHE_EXPIRATION value  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->mContext:Landroid/content/Context;

    const-string v1, "AvailCacheExp"

    invoke-static {v0, v1, v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "msourcethrottlepublish"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 90
    sget-object v0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SOURCE_THROTTLE_PUBLISH value  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->mContext:Landroid/content/Context;

    const-string v1, "Source_Throttle_Publish"

    invoke-static {v0, v1, v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v0, "mcapability_poll_interval"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 96
    sget-object v0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CAPABILITY_POLL_INTERVAL value  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->mContext:Landroid/content/Context;

    const-string v1, "Capability_Poll_Interval"

    invoke-static {v0, v1, v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "mMaxEntries"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 101
    sget-object v0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAX_NUMBER_OF_ENTRIES value  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/sec/android/app/contacts/eab/EabVolteObserver;->mContext:Landroid/content/Context;

    const-string v1, "Max_Number_Of_Entries"

    invoke-static {v0, v1, v7}, Lcom/sec/android/app/contacts/util/ContactsUtil;->writeIntoSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .end local v7    # "str":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 110
    :cond_1
    return-void
.end method
