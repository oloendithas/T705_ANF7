.class public Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;
.super Ljava/lang/Object;
.source "RcsContactListPinner.java"


# static fields
.field public static final ACCOUNT_TYPE_RCSE:Ljava/lang/String; = "com.samsung.rcse"

.field public static final DISABLE_REQUERY:Z = true

.field static LOG_TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;

.field mIsRcsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mNeedQuery:Z

.field mQueryHandler:Landroid/content/AsyncQueryHandler;

.field mRcsStateObserver:Landroid/database/ContentObserver;

.field mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Landroid/net/Uri;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "RcsContactListPinner"

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mIsRcsMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mRcsStateObserver:Landroid/database/ContentObserver;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    .line 73
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mContext:Landroid/content/Context;

    .line 75
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->isBlackBirdFullBranded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$1;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mRcsStateObserver:Landroid/database/ContentObserver;

    .line 96
    :cond_0
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$2;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner$2;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->isBlackBirdFullBranded()Z

    move-result v0

    return v0
.end method

.method private isBlackBirdFullBranded()Z
    .locals 1

    .prologue
    .line 340
    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isRCSFullBranded()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isBlackBirdFeatureEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 341
    const/4 v0, 0x1

    .line 344
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recycleView(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 170
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 171
    .local v0, "rcsCache":Lcom/android/contacts/list/ContactListItemView;
    iget-object v4, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    if-nez v4, :cond_1

    move-object v2, v3

    .line 173
    .local v2, "uri":Landroid/net/Uri;
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    iget v5, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsItemPosition:I

    invoke-virtual {v4, v5}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 174
    if-eqz v2, :cond_0

    .line 175
    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 176
    .local v1, "removed":Landroid/view/View;
    if-nez v1, :cond_0

    .line 177
    sget-object v4, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v5, "View not present in cache"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v1    # "removed":Landroid/view/View;
    :cond_0
    iput-object v3, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    .line 181
    iput v6, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconPosition:I

    .line 182
    iput v6, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsItemPosition:I

    .line 183
    iput-object v3, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    .line 188
    return-void

    .line 171
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v2, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method isRcsInCache(Landroid/net/Uri;)Ljava/lang/Boolean;
    .locals 4
    .param p1, "serviceLookupUri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 242
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v2, "isRcsInCache"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-nez p1, :cond_1

    .line 244
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 250
    :cond_0
    :goto_0
    return-object v0

    .line 246
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mIsRcsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 247
    .local v0, "isRcs":Ljava/lang/Boolean;
    if-nez v0, :cond_0

    .line 248
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public pinBindViewEnd(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 196
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pinBindViewEnd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    if-nez v1, :cond_1

    .line 199
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v2, "pinBindViewEnd, onChange, No need to query"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 204
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 205
    .local v0, "rcsCache":Lcom/android/contacts/list/ContactListItemView;
    iget-object v1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    if-eqz v1, :cond_2

    .line 206
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v2, "pinBindViewEnd, rcsCache.mRcsServiceLookupUri != null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget v1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsItemPosition:I

    iget-object v2, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    invoke-virtual {p0, v1, v2, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->queryRcs(ILandroid/net/Uri;Landroid/view/View;)V

    .line 208
    invoke-virtual {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->updateView(Landroid/view/View;)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 211
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v2, "pinBindViewEnd, rcsCache.mRcsIconView != null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public pinGetViewBeforeBindView(ILandroid/view/View;Landroid/view/ViewGroup;Landroid/net/Uri;)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "v"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "contactUri"    # Landroid/net/Uri;

    .prologue
    .line 148
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v2, "pinGetViewBeforeBindView"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    if-nez p4, :cond_0

    .line 167
    :goto_0
    return-void

    .line 152
    :cond_0
    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v2, "pinGetViewBeforeBindView, contactUri is not null"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->recycleView(Landroid/view/View;)V

    move-object v0, p2

    .line 154
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 155
    .local v0, "rcsCache":Lcom/android/contacts/list/ContactListItemView;
    iput p1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsItemPosition:I

    .line 157
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->isBlackBirdFullBranded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    iput-object p4, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    .line 166
    :goto_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 160
    :cond_1
    invoke-static {p4}, Lcom/sec/android/app/contacts/model/rcs/UriUtils;->rcsServiceUriFromContactLookupUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    .line 162
    iget-object v1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->addOptionsToQuery(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method public pinGetViewInsteadOfNewContacListItemCache()Lcom/android/contacts/list/ContactListItemView;
    .locals 3

    .prologue
    .line 135
    new-instance v0, Lcom/android/contacts/list/ContactListItemView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/list/ContactListItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public pinOnDestroy()V
    .locals 2

    .prologue
    .line 334
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pinOnDestroy"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 336
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mRcsStateObserver:Landroid/database/ContentObserver;

    .line 337
    return-void
.end method

.method public pinOnPause()V
    .locals 5

    .prologue
    .line 317
    sget-object v3, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v4, "pinOnPause"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->isBlackBirdFullBranded()Z

    move-result v3

    if-nez v3, :cond_0

    .line 320
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mRcsStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/AsyncQueryHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 324
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .local v2, "v":Landroid/view/View;
    move-object v0, v2

    .line 325
    check-cast v0, Lcom/android/contacts/list/ContactListItemView;

    .line 326
    .local v0, "cache":Lcom/android/contacts/list/ContactListItemView;
    iget-object v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    iget v4, v0, Lcom/android/contacts/list/ContactListItemView;->mRcsItemPosition:I

    invoke-virtual {v3, v4}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    goto :goto_0

    .line 331
    .end local v0    # "cache":Lcom/android/contacts/list/ContactListItemView;
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    return-void
.end method

.method public pinOnResume()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 278
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pinOnResume"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mNeedQuery:Z

    if-nez v0, :cond_1

    .line 280
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "pinOnResume, No need to query"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mUriToViewMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .local v11, "v":Landroid/view/View;
    move-object v8, v11

    .line 285
    check-cast v8, Lcom/android/contacts/list/ContactListItemView;

    .line 287
    .local v8, "cache":Lcom/android/contacts/list/ContactListItemView;
    iget-object v0, v8, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_2

    .line 291
    const/4 v3, 0x0

    .line 292
    .local v3, "queryUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 293
    .local v4, "projection":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 294
    .local v5, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 296
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->isBlackBirdFullBranded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 297
    iget-object v0, v8, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v9

    .line 298
    .local v9, "contactId":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 299
    new-array v4, v13, [Ljava/lang/String;

    .end local v4    # "projection":[Ljava/lang/String;
    const-string v0, "data1"

    aput-object v0, v4, v12

    .line 300
    .restart local v4    # "projection":[Ljava/lang/String;
    const-string v5, "contact_id = ? AND mimetype = \'vnd.android.cursor.item/rcs_data\'"

    .line 301
    new-array v6, v13, [Ljava/lang/String;

    .end local v6    # "selectionArgs":[Ljava/lang/String;
    aput-object v9, v6, v12

    .line 305
    .end local v9    # "contactId":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    :goto_2
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    iget v1, v8, Lcom/android/contacts/list/ContactListItemView;->mRcsItemPosition:I

    iget-object v2, v8, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 303
    :cond_3
    iget-object v3, v8, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    goto :goto_2

    .line 310
    .end local v3    # "queryUri":Landroid/net/Uri;
    .end local v4    # "projection":[Ljava/lang/String;
    .end local v5    # "selection":Ljava/lang/String;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v8    # "cache":Lcom/android/contacts/list/ContactListItemView;
    .end local v11    # "v":Landroid/view/View;
    :cond_4
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->isBlackBirdFullBranded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->RCS_STACK_STATE_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mRcsStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v12, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method queryRcs(ILandroid/net/Uri;Landroid/view/View;)V
    .locals 9
    .param p1, "itemPosition"    # I
    .param p2, "serviceLookupUri"    # Landroid/net/Uri;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 254
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v1, "queryRcs"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v3, 0x0

    .line 257
    .local v3, "queryUri":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 258
    .local v4, "projection":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 259
    .local v5, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 261
    .local v6, "selectionArgs":[Ljava/lang/String;
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->isBlackBirdFullBranded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 262
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v8

    .line 263
    .local v8, "contactId":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 264
    new-array v4, v7, [Ljava/lang/String;

    .end local v4    # "projection":[Ljava/lang/String;
    const-string v0, "data1"

    aput-object v0, v4, v2

    .line 265
    .restart local v4    # "projection":[Ljava/lang/String;
    const-string v5, "contact_id = ? AND mimetype = \'vnd.android.cursor.item/rcs_data\'"

    .line 266
    new-array v6, v7, [Ljava/lang/String;

    .end local v6    # "selectionArgs":[Ljava/lang/String;
    aput-object v8, v6, v2

    .line 271
    .end local v8    # "contactId":Ljava/lang/String;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    .line 272
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->mQueryHandler:Landroid/content/AsyncQueryHandler;

    const/4 v7, 0x0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    :cond_0
    return-void

    .line 268
    :cond_1
    move-object v3, p2

    goto :goto_0
.end method

.method updateView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 218
    if-nez p1, :cond_0

    .line 239
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 221
    check-cast v1, Lcom/android/contacts/list/ContactListItemView;

    .line 222
    .local v1, "rcsCache":Lcom/android/contacts/list/ContactListItemView;
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateView, lookupUri is : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v2, v1, Lcom/android/contacts/list/ContactListItemView;->mRcsServiceLookupUri:Landroid/net/Uri;

    invoke-virtual {p0, v2}, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->isRcsInCache(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 227
    .local v0, "isRcs":Z
    iget-object v2, v1, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    .line 228
    if-eqz v0, :cond_1

    .line 229
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateView, isRCS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v2, v1, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 231
    iget-object v2, v1, Lcom/android/contacts/list/ContactListItemView;->mAccountIconsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 233
    :cond_1
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateView, is not RCS"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v2, v1, Lcom/android/contacts/list/ContactListItemView;->mRcsIconView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_2
    sget-object v2, Lcom/sec/android/app/contacts/model/rcs/RcsContactListPinner;->LOG_TAG:Ljava/lang/String;

    const-string v3, "updateView, rcsCache.mRcsIconView == null"

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
