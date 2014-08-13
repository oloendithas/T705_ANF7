.class public Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
.super Ljava/lang/Object;
.source "RcsActionBarViewContactPinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;,
        Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;,
        Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescriptionAdapter;,
        Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    }
.end annotation


# static fields
.field public static final FT:I = 0x2

.field public static final IM:I = 0x1

.field public static final LOG_TAG:Ljava/lang/String; = "RcsActionBarViewContactPinner"

.field private static final QUERY_TOKEN:I = 0x4e97c7

.field public static final RCS_FREE_TEXT_TAG:Ljava/lang/String; = "rcs_free_text"

.field static final TAG:Ljava/lang/String;

.field public static final VT:I = 0x3


# instance fields
.field private final RCSE_ENABLED:Ljava/lang/String;

.field public final RCS_ENABLED_FALSE:Ljava/lang/String;

.field public final RCS_ENABLED_TRUE:Ljava/lang/String;

.field private final RCS_SETTINGS_CONTENT_URI:Landroid/net/Uri;

.field private isRcs:Z

.field private mAsyncQuery:Landroid/content/AsyncQueryHandler;

.field mContext:Landroid/content/Context;

.field private mEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

.field private mFTPossibleActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstQuery:Z

.field private mFreeText:Ljava/lang/String;

.field private mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

.field private mIMPossibleActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;",
            ">;"
        }
    .end annotation
.end field

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsObserverRegisted:Z

.field private mIsOwnFtCapable:Z

.field private mIsUserProfile:Z

.field private mLookupUri:Landroid/net/Uri;

.field private mMyStatusObserver:Landroid/database/ContentObserver;

.field private mNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryUri:Landroid/net/Uri;

.field private mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

.field private mRcsClicker:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;

.field private mRcsServiceObserver:Landroid/database/ContentObserver;

.field private mRcsServiceOwnObserver:Landroid/database/ContentObserver;

.field private mRcsStatusObserver:Landroid/database/ContentObserver;

.field private mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 165
    const-class v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z

    .line 277
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mAsyncQuery:Landroid/content/AsyncQueryHandler;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIMPossibleActions:Ljava/util/ArrayList;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;

    .line 283
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsClicker:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;

    .line 285
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsObserverRegisted:Z

    .line 294
    iput-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mNumbers:Ljava/util/ArrayList;

    .line 296
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsUserProfile:Z

    .line 297
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFirstQuery:Z

    .line 303
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsOwnFtCapable:Z

    .line 318
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    .line 320
    const-string v0, "content://com.samsung.rcs.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->RCS_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    .line 321
    const-string v0, "rcse_enabled"

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->RCSE_ENABLED:Ljava/lang/String;

    .line 322
    const-string v0, "1"

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->RCS_ENABLED_TRUE:Ljava/lang/String;

    .line 323
    const-string v0, "0"

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->RCS_ENABLED_FALSE:Ljava/lang/String;

    .line 327
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mNumbers:Ljava/util/ArrayList;

    .line 332
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$2;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsServiceObserver:Landroid/database/ContentObserver;

    .line 351
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$3;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    .line 365
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$4;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mMyStatusObserver:Landroid/database/ContentObserver;

    .line 372
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$5;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsStatusObserver:Landroid/database/ContentObserver;

    .line 379
    new-instance v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$6;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$6;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mAsyncQuery:Landroid/content/AsyncQueryHandler;

    .line 399
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIMPossibleActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->reOrdering(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->buildDialog(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    return-object v0
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Landroid/net/Uri;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFirstQuery:Z

    return v0
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->queryForRCSContact()V

    return-void
.end method

.method static synthetic access$802(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z

    return p1
.end method

.method private buildDialog(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p1, "possibleActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gez v2, :cond_0

    .line 260
    :goto_0
    return-void

    .line 235
    :cond_0
    move-object v0, p1

    .line 236
    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 237
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescriptionAdapter;

    invoke-direct {v2, p0, p1}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescriptionAdapter;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Ljava/util/ArrayList;)V

    new-instance v3, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$1;

    invoke-direct {v3, p0, v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$1;-><init>(Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    iget-object v2, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mServiceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 258
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private closeStatusObserver()V
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mMyStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 842
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 843
    return-void
.end method

.method private queryForRCSContact()V
    .locals 2

    .prologue
    .line 847
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsUserProfile:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->queryMyStatusData()Landroid/database/Cursor;

    move-result-object v0

    .line 849
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->setupStatusItem(Landroid/database/Cursor;)V

    .line 850
    if-eqz v0, :cond_0

    .line 851
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 853
    :cond_0
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->updateFreeTextUI()V

    .line 854
    return-void

    .line 847
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->queryFriendData()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method private queryFriendData()Landroid/database/Cursor;
    .locals 10

    .prologue
    .line 864
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "display_name"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "mood_text"

    aput-object v3, v2, v0

    const/4 v0, 0x2

    const-string v3, "homepage"

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const-string v3, "email"

    aput-object v3, v2, v0

    const/4 v0, 0x4

    const-string v3, "birthday"

    aput-object v3, v2, v0

    const/4 v0, 0x5

    const-string v3, "facebook"

    aput-object v3, v2, v0

    const/4 v0, 0x6

    const-string v3, "twitter"

    aput-object v3, v2, v0

    const/4 v0, 0x7

    const-string v3, "cyworld"

    aput-object v3, v2, v0

    .line 871
    .local v2, "projectionRcsState":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 874
    .local v6, "RcsStateCursor":Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 875
    .local v9, "lookupKeyId":Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "content://com.android.contacts/contacts/"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.samsung.rcs.presence/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 878
    .local v1, "CONTENT_URI":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v7, v6

    .line 884
    .end local v1    # "CONTENT_URI":Landroid/net/Uri;
    .end local v6    # "RcsStateCursor":Landroid/database/Cursor;
    .local v7, "RcsStateCursor":Landroid/database/Cursor;
    :goto_0
    return-object v7

    .line 881
    .end local v7    # "RcsStateCursor":Landroid/database/Cursor;
    .restart local v6    # "RcsStateCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v8

    .line 882
    .local v8, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_1
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v3, "queryFriendData() : DB query error for rcs_state!"

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v7, v6

    .line 884
    .end local v6    # "RcsStateCursor":Landroid/database/Cursor;
    .restart local v7    # "RcsStateCursor":Landroid/database/Cursor;
    goto :goto_0

    .end local v7    # "RcsStateCursor":Landroid/database/Cursor;
    .end local v8    # "e":Landroid/database/sqlite/SQLiteException;
    .restart local v6    # "RcsStateCursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    move-object v7, v6

    .end local v6    # "RcsStateCursor":Landroid/database/Cursor;
    .restart local v7    # "RcsStateCursor":Landroid/database/Cursor;
    goto :goto_0
.end method

.method private queryMyStatusData()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 857
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$Own;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 859
    .local v6, "newCursor":Landroid/database/Cursor;
    return-object v6
.end method

.method private reOrdering(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 498
    .local p1, "tmpActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mNumbers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mNumbers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_2

    :cond_0
    move-object/from16 v15, p1

    .line 548
    :cond_1
    return-object v15

    .line 502
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v3, "actionStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    .line 504
    .local v4, "ad":Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    iget-object v0, v4, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mSipUri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_3

    .line 505
    iget-object v0, v4, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mSipUri:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 508
    .end local v4    # "ad":Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    :cond_4
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 510
    .local v15, "retActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;>;"
    const/4 v9, 0x0

    .line 511
    .local v9, "index":I
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v7    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 512
    .local v11, "phoneNumber":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_7

    const/4 v5, 0x7

    .line 514
    .local v5, "compareLength":I
    :goto_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    sub-int v17, v17, v5

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 516
    .local v6, "compareString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mNumbers:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 517
    .local v16, "string":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mSipUri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 519
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    .end local v16    # "string":Ljava/lang/String;
    :cond_6
    add-int/lit8 v9, v9, 0x1

    .line 524
    goto :goto_1

    .line 512
    .end local v5    # "compareLength":I
    .end local v6    # "compareString":Ljava/lang/String;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_7
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v5

    goto :goto_2

    .line 526
    .end local v11    # "phoneNumber":Ljava/lang/String;
    :cond_8
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    .line 527
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v13, "remainActions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;>;"
    const/4 v10, 0x0

    .line 529
    .local v10, "isAdded":Z
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_c

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    .line 530
    .local v2, "action":Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    .line 531
    .local v14, "retAction":Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    invoke-virtual {v2, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 532
    const/4 v10, 0x1

    .line 537
    .end local v14    # "retAction":Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    :cond_a
    if-nez v10, :cond_b

    .line 538
    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 540
    :cond_b
    const/4 v10, 0x0

    goto :goto_3

    .line 542
    .end local v2    # "action":Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    .end local v8    # "i$":Ljava/util/Iterator;
    :cond_c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_1

    .line 543
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    .line 544
    .local v12, "remainAction":Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4
.end method

.method private setupStatusItem(Landroid/database/Cursor;)V
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 889
    if-nez p1, :cond_1

    .line 921
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 893
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsUserProfile:Z

    if-eqz v0, :cond_4

    .line 894
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->displayName:Ljava/lang/String;

    .line 896
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "mood_text"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->moodText:Ljava/lang/String;

    .line 918
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->displayName:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->displayName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 919
    :cond_3
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->displayName:Ljava/lang/String;

    goto :goto_0

    .line 899
    :cond_4
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "display_name"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->displayName:Ljava/lang/String;

    .line 901
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "mood_text"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->moodText:Ljava/lang/String;

    .line 903
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "homepage"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->homepage:Ljava/lang/String;

    .line 905
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "email"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->email:Ljava/lang/String;

    .line 907
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "birthday"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->birthday:Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "facebook"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->facebook:Ljava/lang/String;

    .line 911
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "twitter"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->twitter:Ljava/lang/String;

    .line 913
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    const-string v1, "cyworld"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->cyworld:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method private setupStatusObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 831
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$Own;->CONTENT_URI:Landroid/net/Uri;

    .line 832
    .local v0, "queryUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mMyStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 835
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RCSState;->CONTENT_URI:Landroid/net/Uri;

    .line 836
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsStatusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 837
    return-void
.end method


# virtual methods
.method public getFreeText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->moodText:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRcs()Z
    .locals 1

    .prologue
    .line 657
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z

    return v0
.end method

.method public getIsRcsForRawContact(J)Z
    .locals 11
    .param p1, "rawContactId"    # J

    .prologue
    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v9, 0x0

    .line 664
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getIsRcs()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v9

    .line 726
    :goto_0
    return v0

    .line 668
    :cond_0
    const/4 v6, 0x0

    .line 671
    .local v6, "cursorForContact":Landroid/database/Cursor;
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "data1"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "raw_contact_id="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " AND "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "mimetype"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "= \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 677
    if-nez v6, :cond_1

    move v0, v9

    .line 678
    goto :goto_0

    .line 680
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_2

    .line 681
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v9

    .line 682
    goto :goto_0

    .line 685
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 687
    const/4 v7, 0x0

    .line 688
    .local v7, "cursorForRcs":Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 690
    .local v8, "numberForRawcontact":Ljava/lang/String;
    const-string v0, "data1"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 691
    if-eqz v8, :cond_2

    .line 694
    const-string v0, "-"

    const-string v1, ""

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 698
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/FeatureTagGrupper$RcsContacts;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "phone_number"

    aput-object v3, v2, v9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phone_number="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->getStrippedReversed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 708
    if-eqz v7, :cond_2

    .line 710
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 711
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 712
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 713
    goto/16 :goto_0

    .line 716
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 722
    .end local v7    # "cursorForRcs":Landroid/database/Cursor;
    .end local v8    # "numberForRawcontact":Ljava/lang/String;
    :cond_4
    if-eqz v6, :cond_5

    .line 723
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v0, v9

    .line 726
    goto/16 :goto_0
.end method

.method public getRCSContactInfo()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;
    .locals 1

    .prologue
    .line 818
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    return-object v0
.end method

.method public getRcsListener()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;
    .locals 1

    .prologue
    .line 734
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsClicker:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;

    return-object v0
.end method

.method public isAvailableFT()Z
    .locals 4

    .prologue
    .line 745
    const/4 v0, 0x0

    .line 747
    .local v0, "retValue":Z
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsOwnFtCapable:Z

    if-eqz v1, :cond_1

    .line 748
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 753
    :goto_0
    const-string v1, "RcsActionBarViewContactPinner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableFT : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    return v0

    .line 748
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 750
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailableIM()Z
    .locals 4

    .prologue
    .line 738
    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIMPossibleActions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 740
    .local v0, "retValue":Z
    :goto_0
    const-string v1, "RcsActionBarViewContactPinner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isAvailableIM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return v0

    .line 738
    .end local v0    # "retValue":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pinOnDestroy()V
    .locals 2

    .prologue
    .line 651
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsObserverRegisted:Z

    if-eqz v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 654
    :cond_0
    return-void
.end method

.method public pinOnPause()V
    .locals 2

    .prologue
    .line 608
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "pinOnPause"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->unregisterObserver()V

    .line 610
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mAsyncQuery:Landroid/content/AsyncQueryHandler;

    const v1, 0x4e97c7

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 611
    return-void
.end method

.method public pinOnResume(Landroid/net/Uri;)V
    .locals 2
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 614
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "pinOnResume"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    .line 617
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->query(Z)V

    .line 619
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->registerObserver()V

    .line 621
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->queryForRCSContact()V

    .line 624
    :cond_0
    return-void
.end method

.method public pinStartEntityQuery(Landroid/net/Uri;)V
    .locals 2
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .prologue
    .line 402
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "pinStartEntityQuery"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    if-nez p1, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 407
    :cond_1
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    .line 409
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->query(Z)V

    .line 411
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->registerObserver()V

    .line 413
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->queryForRCSContact()V

    goto :goto_0
.end method

.method query(Z)V
    .locals 9
    .param p1, "disableRequery"    # Z

    .prologue
    const v1, 0x4e97c7

    const/4 v4, 0x0

    .line 576
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v2, "query"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 582
    :cond_1
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v2, "query, lookupuri is OK"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/sec/android/app/contacts/model/rcs/UriUtils;->extractLookupPart(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v8

    .line 585
    .local v8, "lookupString":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 586
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, v8}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mQueryUri:Landroid/net/Uri;

    .line 587
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mQueryUri:Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->addOptionsToQuery(Landroid/net/Uri;Z)Landroid/net/Uri;

    move-result-object v3

    .line 589
    .local v3, "toQuery":Landroid/net/Uri;
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mQueryUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 590
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFirstQuery:Z

    if-eqz v0, :cond_2

    .line 591
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v2, "Is First Query"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->queryOwn()V

    .line 593
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFirstQuery:Z

    .line 598
    :goto_1
    const-string v0, "RcsActionBarViewContactPinner"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Making query for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mAsyncQuery:Landroid/content/AsyncQueryHandler;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mQueryUri:Landroid/net/Uri;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :cond_2
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v2, "Is NOT First Query"

    invoke-static {v0, v2}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mAsyncQuery:Landroid/content/AsyncQueryHandler;

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    goto :goto_1
.end method

.method queryOwn()V
    .locals 8

    .prologue
    .line 552
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "queryOwn"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_OWN_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 558
    .local v7, "ownCursor":Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 559
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsOwnFtCapable:Z

    .line 560
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "queryOwn : ownCursor == null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    .end local v7    # "ownCursor":Landroid/database/Cursor;
    :goto_0
    return-void

    .line 564
    .restart local v7    # "ownCursor":Landroid/database/Cursor;
    :cond_0
    invoke-virtual {p0, v7}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->readDataFromQueryOwn(Landroid/database/Cursor;)V

    .line 566
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 568
    .end local v7    # "ownCursor":Landroid/database/Cursor;
    :catch_0
    move-exception v6

    .line 569
    .local v6, "ise":Ljava/lang/IllegalStateException;
    const-string v0, "RcsActionBarViewContactPinner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryOwn : RCS Query Failed - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method readDataFromQuery(Landroid/database/Cursor;)V
    .locals 21
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 444
    const-string v18, "RcsActionBarViewContactPinner"

    const-string v19, "readDataFromQuery"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIMPossibleActions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 448
    if-eqz p1, :cond_2

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v18

    if-lez v18, :cond_2

    .line 450
    const-string v18, "feature_tag"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 451
    .local v14, "serviceTagNo":I
    const-string v18, "is_enabled"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 452
    .local v6, "enabledNo":I
    const-string v18, "int_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 453
    .local v11, "intentNameNo":I
    const-string v18, "int_category"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 455
    .local v10, "intentCategoryNo":I
    const-string v18, "displayname"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 456
    .local v4, "displayNameNo":I
    const-string v18, "sip_uri"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 457
    .local v16, "sipUriNo":I
    const-string v18, "service_name"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 459
    .local v13, "serviceNameNo":I
    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 461
    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 462
    .local v17, "tag":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 463
    .local v5, "enabled":I
    const-string v18, "RcsActionBarViewContactPinner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "tag : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", enabled : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    if-lez v5, :cond_0

    .line 467
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 468
    .local v15, "sipUri":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 469
    .local v8, "intentAction":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 470
    .local v9, "intentCategory":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 471
    .local v3, "displayName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 473
    .local v12, "serviceName":Ljava/lang/String;
    const-string v18, "RcsActionBarViewContactPinner"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "sip_uri : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", displayName : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    new-instance v7, Landroid/content/Intent;

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v7, v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 476
    .local v7, "i":Landroid/content/Intent;
    invoke-virtual {v7, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 477
    new-instance v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;

    invoke-direct {v2}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;-><init>()V

    .line 478
    .local v2, "ad":Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    iput-object v3, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mDisplayName:Ljava/lang/String;

    .line 479
    const-string v18, "sip:"

    const-string v19, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    const-string v19, "tel:"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    iput-object v0, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mSipUri:Ljava/lang/String;

    .line 480
    iput-object v7, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mIntent:Landroid/content/Intent;

    .line 481
    iput-object v12, v2, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;->mServiceName:Ljava/lang/String;

    .line 483
    const-string v18, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.im\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIMPossibleActions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    const-string v18, "RcsActionBarViewContactPinner"

    const-string v19, "readDataFromQuery : IM enabled"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_1
    const-string v18, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsOwnFtCapable:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFTPossibleActions:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 490
    const-string v18, "RcsActionBarViewContactPinner"

    const-string v19, "readDataFromQuery : FT enabled"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 495
    .end local v2    # "ad":Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$ActionDescription;
    .end local v3    # "displayName":Ljava/lang/String;
    .end local v4    # "displayNameNo":I
    .end local v5    # "enabled":I
    .end local v6    # "enabledNo":I
    .end local v7    # "i":Landroid/content/Intent;
    .end local v8    # "intentAction":Ljava/lang/String;
    .end local v9    # "intentCategory":Ljava/lang/String;
    .end local v10    # "intentCategoryNo":I
    .end local v11    # "intentNameNo":I
    .end local v12    # "serviceName":Ljava/lang/String;
    .end local v13    # "serviceNameNo":I
    .end local v14    # "serviceTagNo":I
    .end local v15    # "sipUri":Ljava/lang/String;
    .end local v16    # "sipUriNo":I
    .end local v17    # "tag":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method readDataFromQueryOwn(Landroid/database/Cursor;)V
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 419
    const-string v4, "RcsActionBarViewContactPinner"

    const-string v5, "readDataFromQueryOwn"

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_1

    .line 423
    const-string v4, "feature_tag"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 424
    .local v2, "serviceTagNo":I
    const-string v4, "is_enabled"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 426
    .local v1, "enabledNo":I
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 427
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 428
    .local v3, "tag":Ljava/lang/String;
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 429
    .local v0, "enabled":I
    const-string v4, "RcsActionBarViewContactPinner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readDataFromQueryOwn tag : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", enabled : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    if-eqz v3, :cond_0

    const-string v4, "+g.3gpp.iari-ref=\"urn%3Aurn-7%3A3gpp-application.ims.iari.rcse.ft\""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-lez v0, :cond_0

    .line 432
    const-string v4, "RcsActionBarViewContactPinner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readDataFromQueryOwn mIsOwnFtCapable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsOwnFtCapable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsOwnFtCapable:Z

    .line 441
    .end local v0    # "enabled":I
    .end local v1    # "enabledNo":I
    .end local v2    # "serviceTagNo":I
    .end local v3    # "tag":Ljava/lang/String;
    :goto_0
    return-void

    .line 439
    :cond_1
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsOwnFtCapable:Z

    .line 440
    const-string v4, "RcsActionBarViewContactPinner"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readDataFromQueryOwn mIsOwnFtCapable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsOwnFtCapable:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method registerObserver()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 627
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsObserverRegisted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mQueryUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mQueryUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 630
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/contacts/model/rcs/ServiceProviderFields;->SERVICE_OWN_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 631
    iput-boolean v3, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsObserverRegisted:Z

    .line 634
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->setupStatusObserver()V

    .line 637
    :cond_1
    return-void
.end method

.method public resetCurrentViewAndEntry()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 777
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 778
    iput-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 779
    return-void
.end method

.method public setCurrentViewAndEntry(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 2
    .param p1, "view"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;
    .param p2, "entry"    # Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .prologue
    .line 760
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "setCurrentViewAndEntry"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object v0, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    const-string v1, "rcs_free_text"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 762
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 774
    :goto_0
    return-void

    .line 764
    :cond_0
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    .line 765
    iput-object p2, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 767
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_im_action:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRcsListener()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_ft_action:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRcsListener()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 769
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_vt_action:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mOnClickListener:Landroid/view/View$OnClickListener;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->getRcsListener()Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RcsOnClickListener;

    move-result-object v0

    goto :goto_1
.end method

.method public setFreeText(Ljava/lang/String;)V
    .locals 1
    .param p1, "freeText"    # Ljava/lang/String;

    .prologue
    .line 810
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iput-object p1, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->moodText:Ljava/lang/String;

    .line 811
    return-void
.end method

.method public setInflater(Landroid/view/LayoutInflater;)V
    .locals 0
    .param p1, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 730
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mInflater:Landroid/view/LayoutInflater;

    .line 731
    return-void
.end method

.method public setIsUserProfile(Z)V
    .locals 0
    .param p1, "userProfile"    # Z

    .prologue
    .line 826
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsUserProfile:Z

    .line 827
    return-void
.end method

.method public setNumbers(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, "numbers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mNumbers:Ljava/util/ArrayList;

    .line 823
    return-void
.end method

.method unregisterObserver()V
    .locals 2

    .prologue
    .line 640
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsObserverRegisted:Z

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsServiceObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 642
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRcsServiceOwnObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 645
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_IMS_EnableRCSPresence"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 646
    invoke-direct {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->closeStatusObserver()V

    .line 648
    :cond_1
    return-void
.end method

.method public updateFreeTextUI()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 924
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "updateFreeTextUI"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    if-nez v0, :cond_1

    .line 964
    :cond_0
    :goto_0
    return-void

    .line 931
    :cond_1
    const/4 v7, 0x0

    .line 932
    .local v7, "isRcseEnabled":Z
    const/4 v8, 0x0

    .line 934
    .local v8, "rcsContext":Landroid/content/Context;
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->RCS_SETTINGS_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v10

    const-string v3, "name=?"

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "rcse_enabled"

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 935
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_3

    .line 936
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 937
    const/4 v9, 0x0

    .line 938
    .local v9, "value":Ljava/lang/String;
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 940
    const-string v0, "1"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 941
    const/4 v7, 0x1

    .line 946
    .end local v9    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 949
    :cond_3
    if-eqz v7, :cond_5

    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mIsUserProfile:Z

    if-eqz v0, :cond_5

    .line 950
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->moodText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 942
    .restart local v9    # "value":Ljava/lang/String;
    :cond_4
    const-string v0, "0"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    const/4 v7, 0x0

    goto :goto_1

    .line 952
    .end local v9    # "value":Ljava/lang/String;
    :cond_5
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z

    if-eqz v0, :cond_7

    .line 953
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iget-object v0, v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->moodText:Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 954
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->data:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mRCSContactInfo:Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;

    iget-object v1, v1, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner$RCSColumnInfo;->moodText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 958
    :cond_6
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 961
    :cond_7
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    const-string v1, "updateUI, is not Rcs"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mFreeTextView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateUI()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 782
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "updateUI"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    if-nez v0, :cond_0

    .line 785
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "mView is null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :goto_0
    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsButtonRow:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    .line 790
    :cond_1
    const-string v0, "RcsActionBarViewContactPinner"

    const-string v1, "mView.actionsViewContainer == null || mView.rcsButtonRow == null"

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 794
    :cond_2
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isRcs:Z

    if-eqz v0, :cond_3

    .line 795
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    const-string v1, "updateUI, isRcs"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsButtonRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsButtonRow:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_im_action:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isAvailableIM()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 800
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_ft_action:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->isAvailableFT()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 801
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcs_vt_action:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 803
    :cond_3
    sget-object v0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->TAG:Ljava/lang/String;

    const-string v1, "updateUI, is not Rcs"

    invoke-static {v0, v1}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->actionsViewContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 805
    iget-object v0, p0, Lcom/sec/android/app/contacts/model/rcs/RcsActionBarViewContactPinner;->mView:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->rcsButtonRow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
