.class public Lcom/android/contacts/quickcontact/ResolveCache;
.super Ljava/lang/Object;
.source "ResolveCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/ResolveCache$1;,
        Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

.field private static final sPreferResolve:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/ResolveCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.email"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.android.mms"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.android.phone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.android.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.apps.maps"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.sec.android.app.sbrowser"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sPreferResolve:Ljava/util/HashSet;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    .line 100
    iput-object p1, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 102
    return-void
.end method

.method public static declared-synchronized flush()V
    .locals 2

    .prologue
    .line 84
    const-class v0, Lcom/android/contacts/quickcontact/ResolveCache;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit v0

    return-void

    .line 84
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const-class v1, Lcom/android/contacts/quickcontact/ResolveCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/contacts/quickcontact/ResolveCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/contacts/quickcontact/ResolveCache;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/contacts/quickcontact/ResolveCache;->sInstance:Lcom/android/contacts/quickcontact/ResolveCache;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 360
    return-void
.end method

.method protected getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ResolveInfo;"
        }
    .end annotation

    .prologue
    .local p2, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 261
    iget-object v10, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v11, 0x10000

    invoke-virtual {v10, p1, v11}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 264
    .local v2, "foundResolve":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_1

    .line 266
    iget v10, v2, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v11, 0xfff0000

    and-int/2addr v10, v11

    if-nez v10, :cond_0

    move v1, v8

    .line 268
    .local v1, "foundDisambig":Z
    :goto_0
    if-nez v1, :cond_1

    .line 289
    .end local v1    # "foundDisambig":Z
    .end local v2    # "foundResolve":Landroid/content/pm/ResolveInfo;
    :goto_1
    return-object v2

    .restart local v2    # "foundResolve":Landroid/content/pm/ResolveInfo;
    :cond_0
    move v1, v9

    .line 266
    goto :goto_0

    .line 275
    :cond_1
    const/4 v0, 0x0

    .line 276
    .local v0, "firstSystem":Landroid/content/pm/ResolveInfo;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 277
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-boolean v5, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 278
    .local v5, "isDefault":Z
    iget-object v10, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_4

    move v7, v8

    .line 279
    .local v7, "isSystem":Z
    :goto_3
    sget-object v10, Lcom/android/contacts/quickcontact/ResolveCache;->sPreferResolve:Ljava/util/HashSet;

    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    .line 282
    .local v6, "isPrefer":Z
    if-nez v6, :cond_3

    if-eqz v5, :cond_5

    :cond_3
    move-object v2, v4

    .line 283
    goto :goto_1

    .end local v6    # "isPrefer":Z
    .end local v7    # "isSystem":Z
    :cond_4
    move v7, v9

    .line 278
    goto :goto_3

    .line 284
    .restart local v6    # "isPrefer":Z
    .restart local v7    # "isSystem":Z
    :cond_5
    if-eqz v7, :cond_2

    if-nez v0, :cond_2

    .line 285
    move-object v0, v4

    goto :goto_2

    .line 289
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    .end local v5    # "isDefault":Z
    .end local v6    # "isPrefer":Z
    .end local v7    # "isSystem":Z
    :cond_6
    if-eqz v0, :cond_7

    .end local v0    # "firstSystem":Landroid/content/pm/ResolveInfo;
    :goto_4
    move-object v2, v0

    goto :goto_1

    .restart local v0    # "firstSystem":Landroid/content/pm/ResolveInfo;
    :cond_7
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    move-object v0, v8

    goto :goto_4
.end method

.method public getDescription(Lcom/android/contacts/quickcontact/Action;)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "action"    # Lcom/android/contacts/quickcontact/Action;

    .prologue
    const/4 v8, 0x0

    .line 306
    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v4

    .line 307
    .local v4, "intent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 310
    .local v5, "intentAction":Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 312
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIPCall(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 313
    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 314
    const-string v6, "ipcall"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 315
    .local v0, "IPCallDialer":Z
    if-eqz v0, :cond_1

    .line 316
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    const v7, 0x7f0e039c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 346
    .end local v0    # "IPCallDialer":Z
    :cond_0
    :goto_0
    return-object v2

    .line 323
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 324
    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 325
    const-string v6, "videocall"

    invoke-virtual {v4, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 326
    .local v1, "VTCallDialer":Z
    if-eqz v1, :cond_2

    .line 327
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    const v7, 0x7f0e031b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 333
    .end local v1    # "VTCallDialer":Z
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 334
    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 335
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    const v7, 0x7f0e031f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 339
    :cond_3
    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 340
    .local v2, "actionSubtitle":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v6

    iget-object v3, v6, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    .line 341
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_4

    .line 342
    iget-object v6, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v6}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_0

    .line 343
    :cond_4
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 346
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    .locals 15
    .param p1, "action"    # Lcom/android/contacts/quickcontact/Action;

    .prologue
    .line 109
    invoke-interface/range {p1 .. p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v10

    .line 110
    .local v10, "mimeType":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    .line 111
    .local v1, "entry":Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    if-eqz v1, :cond_0

    iget-object v13, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    if-eqz v13, :cond_0

    move-object v2, v1

    .line 248
    .end local v1    # "entry":Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    .local v2, "entry":Ljava/lang/Object;
    :goto_0
    return-object v2

    .line 113
    .end local v2    # "entry":Ljava/lang/Object;
    .restart local v1    # "entry":Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    :cond_0
    new-instance v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    .end local v1    # "entry":Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    const/4 v13, 0x0

    invoke-direct {v1, v13}, Lcom/android/contacts/quickcontact/ResolveCache$Entry;-><init>(Lcom/android/contacts/quickcontact/ResolveCache$1;)V

    .line 115
    .restart local v1    # "entry":Lcom/android/contacts/quickcontact/ResolveCache$Entry;
    invoke-interface/range {p1 .. p1}, Lcom/android/contacts/quickcontact/Action;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 116
    .local v5, "intent":Landroid/content/Intent;
    const-string v13, "vnd.android.cursor.item/sip_address"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 118
    const/4 v5, 0x0

    .line 121
    :cond_1
    if-eqz v5, :cond_6

    .line 122
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v14, 0x10000

    invoke-virtual {v13, v5, v14}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 126
    .local v9, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .line 127
    .local v0, "bestResolve":Landroid/content/pm/ResolveInfo;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    .line 128
    .local v12, "size":I
    const/4 v13, 0x1

    if-ne v12, v13, :cond_7

    .line 129
    const/4 v13, 0x0

    invoke-interface {v9, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bestResolve":Landroid/content/pm/ResolveInfo;
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 134
    .restart local v0    # "bestResolve":Landroid/content/pm/ResolveInfo;
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 135
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v13}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 137
    .local v3, "icon":Landroid/graphics/drawable/Drawable;
    iput-object v0, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    .line 138
    iput-object v3, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    .line 141
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_3
    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 142
    .local v6, "intentAction":Ljava/lang/String;
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/contacts/util/PhoneCapabilityTester;->isVideoCall(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 143
    const-string v13, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 144
    const-string v13, "videocall"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 145
    .local v8, "mVTCallDialer":Z
    if-eqz v8, :cond_b

    .line 148
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->makeFeature(Landroid/content/Context;)V

    .line 149
    const-string v13, "feature_kor"

    invoke-static {v13}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 150
    const-string v13, "feature_skt"

    invoke-static {v13}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 151
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0203e0

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 164
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_2
    iput-object v3, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    .line 178
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "mVTCallDialer":Z
    :cond_4
    :goto_3
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v13

    const-string v14, "CscFeature_Contact_EnableIPCall"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 180
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/contacts/util/PhoneCapabilityTester;->isIPCall(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 181
    const-string v13, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 182
    const-string v13, "ipcall"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 183
    .local v7, "mIPCallDialer":Z
    if-eqz v7, :cond_5

    .line 184
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0203d6

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 186
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    iput-object v3, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    .line 193
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v7    # "mIPCallDialer":Z
    :cond_5
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/contacts/util/PhoneCapabilityTester;->isDualCall(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 194
    const-string v13, "android.intent.action.CALL_PRIVILEGED"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 195
    const-string v13, "simnum"

    const/4 v14, 0x0

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 196
    .local v11, "simNum":I
    const/4 v13, 0x1

    if-ne v11, v13, :cond_c

    .line 197
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v13

    const-string v14, "vnd.sec.contact.sim"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimContactDetailIcon(Ljava/lang/String;)I

    move-result v4

    .line 199
    .local v4, "iconRes":I
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 200
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    iput-object v3, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    .line 247
    .end local v0    # "bestResolve":Landroid/content/pm/ResolveInfo;
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v4    # "iconRes":I
    .end local v6    # "intentAction":Ljava/lang/String;
    .end local v9    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "simNum":I
    .end local v12    # "size":I
    :cond_6
    :goto_4
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mCache:Ljava/util/HashMap;

    invoke-virtual {v13, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 248
    .restart local v2    # "entry":Ljava/lang/Object;
    goto/16 :goto_0

    .line 130
    .end local v2    # "entry":Ljava/lang/Object;
    .restart local v0    # "bestResolve":Landroid/content/pm/ResolveInfo;
    .restart local v9    # "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v12    # "size":I
    :cond_7
    const/4 v13, 0x1

    if-le v12, v13, :cond_2

    .line 131
    invoke-virtual {p0, v5, v9}, Lcom/android/contacts/quickcontact/ResolveCache;->getBestResolve(Landroid/content/Intent;Ljava/util/List;)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    goto/16 :goto_1

    .line 153
    .restart local v6    # "intentAction":Ljava/lang/String;
    .restart local v8    # "mVTCallDialer":Z
    :cond_8
    const-string v13, "feature_lgt"

    invoke-static {v13}, Lcom/sec/android/app/dialertab/DialerLogsFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 154
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0203df

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 157
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_9
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0203de

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 161
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_a
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0203dd

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    goto/16 :goto_2

    .line 168
    .end local v3    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_b
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 169
    const-string v13, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v13, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 170
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0203d1

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_3

    .line 201
    .end local v8    # "mVTCallDialer":Z
    .restart local v11    # "simNum":I
    :cond_c
    const/4 v13, 0x2

    if-ne v11, v13, :cond_6

    .line 202
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v13

    const-string v14, "vnd.sec.contact.sim2"

    invoke-virtual {v13, v14}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getSimContactDetailIcon(Ljava/lang/String;)I

    move-result v4

    .line 204
    .restart local v4    # "iconRes":I
    iget-object v13, p0, Lcom/android/contacts/quickcontact/ResolveCache;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 205
    .restart local v3    # "icon":Landroid/graphics/drawable/Drawable;
    iput-object v3, v1, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4
.end method

.method public getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "action"    # Lcom/android/contacts/quickcontact/Action;

    .prologue
    .line 355
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public hasResolve(Lcom/android/contacts/quickcontact/Action;)Z
    .locals 1
    .param p1, "action"    # Lcom/android/contacts/quickcontact/Action;

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->getEntry(Lcom/android/contacts/quickcontact/Action;)Lcom/android/contacts/quickcontact/ResolveCache$Entry;

    move-result-object v0

    iget-object v0, v0, Lcom/android/contacts/quickcontact/ResolveCache$Entry;->bestResolve:Landroid/content/pm/ResolveInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
