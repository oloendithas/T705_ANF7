.class public Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
.super Landroid/app/ListActivity;
.source "SetDefaultActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;
.implements Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;,
        Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewCache;
    }
.end annotation


# static fields
.field private static final EMAIL:I = 0x3

.field private static final EXTRA_CHANGED_INFO:Ljava/lang/String; = "isChangedInfoArray"

.field private static final EXTRA_CHECKED_INFO:Ljava/lang/String; = "checkedInfoArray"

.field private static final EXTRA_FIRST_CHECKED_INFO:Ljava/lang/String; = "firstCheckedInfoArray"

.field private static final EXTRA_FIRST_INFO:Ljava/lang/String; = "isFirstInfo"

.field private static final ID_LOADER_INIT:I = 0x1

.field private static final KEY_LOADER_LOOKUP_URI:Ljava/lang/String; = "contactUri"

.field private static final NAME:I = 0x1

.field private static final NUMBER:I = 0x2

.field private static final PHOTO:I = 0x0

.field private static final TAG:Ljava/lang/String; = "SetDefaultActivity"


# instance fields
.field private isUsingTwoPanel:Z

.field private mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedEmailIndex:I

.field private mCheckedNameIndex:I

.field private mCheckedNumberIndex:I

.field private mCheckedPhotoIndex:I

.field private mContactId:J

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

.field public mDoneUpdate:Z

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mFirstCheckedEmailIndex:I

.field private mFirstCheckedNameIndex:I

.field private mFirstCheckedNumberIndex:I

.field private mFirstCheckedPhotoIndex:I

.field private mIsEmailChanged:Z

.field private mIsFirstEmail:Z

.field private mIsFirstName:Z

.field private mIsFirstNumber:Z

.field private mIsFirstPhoto:Z

.field private mIsMultiWindowSupported:Z

.field private mIsNameChanged:Z

.field private mIsNumberChanged:Z

.field private mIsPhotoChanged:Z

.field private mIsPhotoCheckedPrimary:Z

.field private mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

.field protected mLookupUri:Landroid/net/Uri;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mMenuDone:Landroid/view/MenuItem;

.field private mNameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

.field private mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 158
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 106
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    .line 107
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    .line 108
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    .line 109
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    .line 110
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    .line 111
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    .line 112
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    .line 113
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    .line 115
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    .line 116
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNameIndex:I

    .line 117
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    .line 118
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    .line 120
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z

    .line 121
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z

    .line 122
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z

    .line 123
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    .line 136
    iput-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mDoneUpdate:Z

    .line 155
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoCheckedPrimary:Z

    .line 564
    new-instance v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$1;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 695
    new-instance v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;

    invoke-direct {v0, p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$2;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)V

    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    return v0
.end method

.method static synthetic access$1002(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    return p1
.end method

.method static synthetic access$1100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    return v0
.end method

.method static synthetic access$1102(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    return p1
.end method

.method static synthetic access$1200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    return v0
.end method

.method static synthetic access$1402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    return p1
.end method

.method static synthetic access$1500(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    return v0
.end method

.method static synthetic access$1502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    return p1
.end method

.method static synthetic access$1600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z

    return v0
.end method

.method static synthetic access$1702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z

    return p1
.end method

.method static synthetic access$1800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/MenuItem;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMenuDone:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Lcom/android/contacts/ContactLoader$Result;)V
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 88
    invoke-direct {p0, p1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindData(Lcom/android/contacts/ContactLoader$Result;)V

    return-void
.end method

.method static synthetic access$200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    return v0
.end method

.method static synthetic access$2000(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/view/View$OnClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    return p1
.end method

.method static synthetic access$2100(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Lcom/sec/android/app/contacts/ListHoverManager;
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Lcom/sec/android/app/contacts/ListHoverManager;)Lcom/sec/android/app/contacts/ListHoverManager;
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # Lcom/sec/android/app/contacts/ListHoverManager;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mListHoverManager:Lcom/sec/android/app/contacts/ListHoverManager;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/model/DataKind;
    .param p1, "x1"    # Landroid/content/ContentValues;
    .param p2, "x2"    # Landroid/content/Context;

    .prologue
    .line 88
    invoke-static {p0, p1, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    return v0
.end method

.method static synthetic access$302(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    return p1
.end method

.method static synthetic access$400(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    return v0
.end method

.method static synthetic access$402(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    return p1
.end method

.method static synthetic access$500(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z

    return v0
.end method

.method static synthetic access$502(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z

    return p1
.end method

.method static synthetic access$600(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNameIndex:I

    return v0
.end method

.method static synthetic access$702(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNameIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    return v0
.end method

.method static synthetic access$802(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z

    return v0
.end method

.method static synthetic access$902(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 88
    iput-boolean p1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z

    return p1
.end method

.method private addLastSeparator()V
    .locals 2

    .prologue
    .line 550
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 551
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;

    invoke-direct {v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    :cond_0
    return-void
.end method

.method private bindData(Lcom/android/contacts/ContactLoader$Result;)V
    .locals 26
    .param p1, "data"    # Lcom/android/contacts/ContactLoader$Result;

    .prologue
    .line 431
    if-nez p1, :cond_0

    .line 496
    :goto_0
    return-void

    .line 435
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->initData()V

    .line 436
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getId()J

    move-result-wide v24

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContactId:J

    .line 438
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v15

    .line 440
    .local v15, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/ContactLoader$Result;->getEntities()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/content/Entity;

    .line 441
    .local v17, "entity":Landroid/content/Entity;
    invoke-virtual/range {v17 .. v17}, Landroid/content/Entity;->getEntityValues()Landroid/content/ContentValues;

    move-result-object v18

    .line 442
    .local v18, "entryValues":Landroid/content/ContentValues;
    const-string v3, "data_set"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 443
    .local v16, "dataSet":Ljava/lang/String;
    const-string v3, "account_type"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 444
    .local v10, "accountType":Ljava/lang/String;
    const-string v3, "account_name"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 446
    .local v11, "accountName":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/AccountType;

    move-result-object v23

    .line 448
    .local v23, "type":Lcom/android/contacts/model/AccountType;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Lcom/android/contacts/model/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 450
    .local v12, "accountLabel":Ljava/lang/String;
    const-string v3, "vnd.sec.contact.phone"

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 451
    move-object v11, v12

    .line 454
    :cond_2
    invoke-virtual/range {v17 .. v17}, Landroid/content/Entity;->getSubValues()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/content/Entity$NamedContentValues;

    .line 455
    .local v22, "subValue":Landroid/content/Entity$NamedContentValues;
    move-object/from16 v0, v22

    iget-object v8, v0, Landroid/content/Entity$NamedContentValues;->values:Landroid/content/ContentValues;

    .line 456
    .local v8, "subEntryValues":Landroid/content/ContentValues;
    const-string v3, "mimetype"

    invoke-virtual {v8, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 457
    .local v4, "mimeType":Ljava/lang/String;
    const-string v3, "_id"

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 459
    .local v6, "dataId":J
    if-eqz v4, :cond_3

    .line 462
    move-object/from16 v0, v16

    invoke-virtual {v15, v10, v0, v4}, Lcom/android/contacts/model/AccountTypeManager;->getKindOrFallback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/DataKind;

    move-result-object v5

    .line 464
    .local v5, "kind":Lcom/android/contacts/model/DataKind;
    if-eqz v5, :cond_3

    .line 467
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-static/range {v3 .. v8}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->fromValues(Landroid/content/Context;Ljava/lang/String;Lcom/android/contacts/model/DataKind;JLandroid/content/ContentValues;)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    move-result-object v14

    .line 470
    .local v14, "entry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const-string v3, "vnd.android.cursor.item/photo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object/from16 v9, p0

    move-object v13, v8

    .line 471
    invoke-direct/range {v9 .. v14}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindPhotoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_1

    .line 472
    :cond_4
    const-string v3, "vnd.android.cursor.item/name"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 473
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v11, v1, v8, v14}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindNameData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_1

    .line 474
    :cond_5
    const-string v3, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 475
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getAccountIcon(Lcom/android/contacts/model/AccountType;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 476
    .local v21, "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8, v14}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindPhoneNumberData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto :goto_1

    .line 477
    .end local v21    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_6
    const-string v3, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 478
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->getAccountIcon(Lcom/android/contacts/model/AccountType;)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    .line 479
    .restart local v21    # "icon":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v8, v14}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->bindEmailData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V

    goto/16 :goto_1

    .line 484
    .end local v4    # "mimeType":Ljava/lang/String;
    .end local v5    # "kind":Lcom/android/contacts/model/DataKind;
    .end local v6    # "dataId":J
    .end local v8    # "subEntryValues":Landroid/content/ContentValues;
    .end local v10    # "accountType":Ljava/lang/String;
    .end local v11    # "accountName":Ljava/lang/String;
    .end local v12    # "accountLabel":Ljava/lang/String;
    .end local v14    # "entry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    .end local v16    # "dataSet":Ljava/lang/String;
    .end local v17    # "entity":Landroid/content/Entity;
    .end local v18    # "entryValues":Landroid/content/ContentValues;
    .end local v20    # "i$":Ljava/util/Iterator;
    .end local v21    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v22    # "subValue":Landroid/content/Entity$NamedContentValues;
    .end local v23    # "type":Lcom/android/contacts/model/AccountType;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 485
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 486
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 488
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setupFlattenedList()V

    .line 490
    new-instance v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v3, v0, v1}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;-><init>(Lcom/sec/android/app/contacts/activities/SetDefaultActivity;Landroid/app/ListActivity;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    .line 491
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 493
    invoke-direct/range {p0 .. p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->updateCheckedIndex()V

    .line 494
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 495
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/app/ListActivity;->mList:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmptyView:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private bindEmailData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "subEntryValues"    # Landroid/content/ContentValues;
    .param p3, "entry"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .prologue
    .line 843
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 844
    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 847
    :cond_0
    const-string v3, "data2"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 849
    .local v1, "typeString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 851
    .local v0, "dataType":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 852
    const/4 v0, 0x2

    .line 857
    :goto_0
    const/4 v2, 0x0

    .line 858
    .local v2, "types":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isCustomType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 859
    const-string v3, "data3"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 864
    :goto_1
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    .line 865
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->showingEntryId:J

    .line 866
    iput-object p1, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 867
    iput-object v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 868
    const-string v3, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 869
    const/4 v3, 0x3

    iput v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 871
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    return-void

    .line 854
    .end local v2    # "types":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 861
    .restart local v2    # "types":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private bindNameData(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 6
    .param p1, "accountName"    # Ljava/lang/String;
    .param p2, "entryValues"    # Landroid/content/ContentValues;
    .param p3, "subEntryValues"    # Landroid/content/ContentValues;
    .param p4, "entry"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .prologue
    const/4 v5, 0x1

    .line 785
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultName(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 786
    iput-boolean v5, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 789
    :cond_0
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 791
    .local v1, "rawContactId":J
    const-string v3, "data1"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 794
    :cond_1
    const v3, 0x104000e

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 797
    :cond_2
    iput-wide v1, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    .line 798
    iput-object v0, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 799
    iput-object p1, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 800
    iput-boolean v5, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    .line 801
    iput v5, p4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 803
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    return-void
.end method

.method private bindPhoneNumberData(Landroid/graphics/drawable/Drawable;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 5
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "subEntryValues"    # Landroid/content/ContentValues;
    .param p3, "entry"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .prologue
    .line 809
    invoke-direct {p0, p2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 810
    const/4 v3, 0x1

    iput-boolean v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 813
    :cond_0
    const-string v3, "data2"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 815
    .local v1, "typeString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 817
    .local v0, "dataType":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 818
    const/4 v0, 0x2

    .line 823
    :goto_0
    const/4 v2, 0x0

    .line 824
    .local v2, "types":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isCustomType(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 825
    const-string v3, "data3"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 830
    :goto_1
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    .line 831
    const-string v3, "_id"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->showingEntryId:J

    .line 832
    iput-object p1, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 833
    iput-object v2, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 834
    const-string v3, "data1"

    invoke-virtual {p2, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 835
    const/4 v3, 0x2

    iput v3, p3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 837
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    return-void

    .line 820
    .end local v2    # "types":Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 827
    .restart local v2    # "types":Ljava/lang/String;
    :cond_2
    invoke-static {v0}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabelResource(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private bindPhotoData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;)V
    .locals 6
    .param p1, "accountType"    # Ljava/lang/String;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "accountLabel"    # Ljava/lang/String;
    .param p4, "subEntryValues"    # Landroid/content/ContentValues;
    .param p5, "entry"    # Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 748
    invoke-direct {p0, p4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isDefaultData(Landroid/content/ContentValues;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoCheckedPrimary:Z

    if-nez v2, :cond_0

    .line 749
    iput-boolean v4, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 750
    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoCheckedPrimary:Z

    .line 753
    :cond_0
    const/4 v0, 0x0

    .line 754
    .local v0, "photo":Landroid/graphics/Bitmap;
    const-string v2, "data15"

    invoke-virtual {p4, v2}, Landroid/content/ContentValues;->getAsByteArray(Ljava/lang/String;)[B

    move-result-object v1

    .line 755
    .local v1, "photoBiteArray":[B
    if-nez v1, :cond_1

    .line 780
    :goto_0
    return-void

    .line 763
    :cond_1
    array-length v2, v1

    invoke-static {v1, v5, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 766
    const-string v2, "vnd.sec.contact.phone"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 767
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0284

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 772
    :goto_1
    const-string v2, "_id"

    invoke-virtual {p4, v2}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->id:J

    .line 773
    iput-object v0, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->mImage:Landroid/graphics/Bitmap;

    .line 774
    iput-object p2, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 775
    iput-object p1, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->data:Ljava/lang/String;

    .line 776
    iput-boolean v4, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isReverse:Z

    .line 777
    iput v5, p5, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->which:I

    .line 779
    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 769
    :cond_2
    move-object p1, p3

    goto :goto_1
.end method

.method private static buildDataString(Lcom/android/contacts/model/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "kind"    # Lcom/android/contacts/model/DataKind;
    .param p1, "values"    # Landroid/content/ContentValues;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 1248
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 1252
    :cond_0
    :goto_0
    return-object v1

    .line 1251
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/model/DataKind;->actionBody:Lcom/android/contacts/model/AccountType$StringInflater;

    invoke-interface {v2, p2, p1}, Lcom/android/contacts/model/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1252
    .local v0, "actionBody":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, "entries":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 514
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 515
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    iget-object v2, v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->kind:Ljava/lang/String;

    .line 516
    .local v2, "kind":Ljava/lang/String;
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;

    invoke-direct {v4, v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    .end local v2    # "kind":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 522
    if-eqz v1, :cond_1

    .line 523
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;

    invoke-direct {v4}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$SeparatorViewEntry;-><init>()V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 525
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 529
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 530
    return-void
.end method

.method private getAccountIcon(Lcom/android/contacts/model/AccountType;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "type"    # Lcom/android/contacts/model/AccountType;

    .prologue
    .line 539
    if-nez p1, :cond_0

    .line 540
    const/4 v0, 0x0

    .line 544
    .end local p1    # "type":Lcom/android/contacts/model/AccountType;
    :goto_0
    return-object v0

    .line 541
    .restart local p1    # "type":Lcom/android/contacts/model/AccountType;
    :cond_0
    instance-of v0, p1, Lcom/android/contacts/model/ExchangeAccountType;

    if-eqz v0, :cond_1

    .line 542
    check-cast p1, Lcom/android/contacts/model/ExchangeAccountType;

    .end local p1    # "type":Lcom/android/contacts/model/AccountType;
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/ExchangeAccountType;->getDisplaySmallIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 544
    .restart local p1    # "type":Lcom/android/contacts/model/AccountType;
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/contacts/model/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 728
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 731
    :cond_0
    return-void
.end method

.method private initializeCheckedInformation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 419
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    .line 420
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    .line 421
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    .line 422
    iput v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    .line 423
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    .line 424
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    .line 425
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    .line 426
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    .line 427
    return-void
.end method

.method private isCustomType(I)Z
    .locals 1
    .param p1, "dataType"    # I

    .prologue
    .line 734
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultData(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "subEntryValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, 0x1

    .line 738
    const-string v1, "is_super_primary"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isDefaultName(Landroid/content/ContentValues;)Z
    .locals 2
    .param p1, "entryValues"    # Landroid/content/ContentValues;

    .prologue
    const/4 v0, 0x1

    .line 742
    const-string v1, "name_verified"

    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private performSaveAction()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 656
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 658
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    if-eqz v2, :cond_0

    .line 659
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 660
    .local v1, "trueValues":Landroid/content/ContentValues;
    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 666
    .end local v1    # "trueValues":Landroid/content/ContentValues;
    :cond_0
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    if-eqz v2, :cond_1

    .line 667
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 668
    .restart local v1    # "trueValues":Landroid/content/ContentValues;
    const-string v2, "name_verified"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 670
    sget-object v3, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    invoke-virtual {v2}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;->getId()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 675
    .end local v1    # "trueValues":Landroid/content/ContentValues;
    :cond_1
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    if-eqz v2, :cond_2

    .line 676
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 677
    .restart local v1    # "trueValues":Landroid/content/ContentValues;
    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 679
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    iget-wide v4, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->showingEntryId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 684
    .end local v1    # "trueValues":Landroid/content/ContentValues;
    :cond_2
    iget-boolean v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    if-eqz v2, :cond_3

    .line 685
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 686
    .restart local v1    # "trueValues":Landroid/content/ContentValues;
    const-string v2, "is_super_primary"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 688
    sget-object v3, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAllEntries:Ljava/util/ArrayList;

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    iget-wide v4, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->showingEntryId:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 692
    .end local v1    # "trueValues":Landroid/content/ContentValues;
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 693
    return-void
.end method

.method private prepareData()V
    .locals 4

    .prologue
    .line 557
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "contactUri"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLookupUri:Landroid/net/Uri;

    .line 559
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 560
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "contactUri"

    iget-object v2, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 561
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 562
    return-void
.end method

.method private setLayout()V
    .locals 6

    .prologue
    .line 303
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 304
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c020a

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 305
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 306
    .local v0, "dimAmount":F
    iget-boolean v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isUsingTwoPanel:Z

    if-eqz v3, :cond_0

    .line 307
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 308
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 323
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 312
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 313
    const/16 v3, 0x35

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 314
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 316
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 318
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 319
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f040089

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method private setupFlattenedList()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhotoEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 502
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mNameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 503
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 504
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->flattenList(Ljava/util/ArrayList;)V

    .line 506
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->addLastSeparator()V

    .line 508
    return-void
.end method

.method private setupTitle()V
    .locals 3

    .prologue
    .line 284
    const v2, 0x7f0e029a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "displayName":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 287
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 288
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 290
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getSetTitleOnActionBar()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 291
    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateCheckedIndex()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 347
    :try_start_0
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    if-eq v5, v7, :cond_0

    .line 348
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v3

    check-cast v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 350
    .local v3, "checkedPhotoEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 352
    .end local v3    # "checkedPhotoEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_0
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    if-eq v5, v7, :cond_1

    .line 353
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v1

    check-cast v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 355
    .local v1, "checkedNameEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 357
    .end local v1    # "checkedNameEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_1
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    if-eq v5, v7, :cond_2

    .line 358
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v2

    check-cast v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 360
    .local v2, "checkedNumberEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z

    .line 362
    .end local v2    # "checkedNumberEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_2
    iget v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    if-eq v5, v7, :cond_3

    .line 363
    iget-object v5, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    iget v6, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    invoke-virtual {v5, v6}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;

    .line 365
    .local v0, "checkedEmailEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;->isPrimary:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    .end local v0    # "checkedEmailEntry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DetailViewEntry;
    :cond_3
    :goto_0
    return-void

    .line 367
    :catch_0
    move-exception v4

    .line 370
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 371
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->initializeCheckedInformation()V

    goto :goto_0
.end method

.method private updateFlag(Z)V
    .locals 2
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 275
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v1}, Lcom/android/contacts/list/ProviderStatusWatcher;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v0

    .line 276
    .local v0, "providerStatus":Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    iput-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    .line 277
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatus:Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    iget v1, v1, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mDoneUpdate:Z

    .line 279
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 280
    return-void

    .line 277
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 414
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 415
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setLayout()V

    .line 416
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v5, 0x400

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 163
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/list/ProviderStatusWatcher;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ProviderStatusWatcher;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    .line 166
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->isUsingTwoPanel:Z

    .line 168
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsMultiWindowSupported:Z

    .line 171
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsMultiWindowSupported:Z

    if-eqz v4, :cond_0

    .line 172
    new-instance v4, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v4, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 173
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v4, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->setStateChangeListener(Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity$StateChangeListener;)Z

    .line 177
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 178
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/high16 v5, 0x800000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 180
    invoke-virtual {p0, v6}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 182
    iget-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v4, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->addListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 183
    if-eqz p1, :cond_7

    .line 185
    const-string v4, "checkedInfoArray"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v0

    .line 186
    .local v0, "checkedInfoArray":[I
    const-string v4, "isChangedInfoArray"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v2

    .line 187
    .local v2, "isChangedInfoArray":[Z
    const-string v4, "firstCheckedInfoArray"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 188
    .local v1, "firstCheckedInfoArray":[I
    const-string v4, "isFirstInfo"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBooleanArray(Ljava/lang/String;)[Z

    move-result-object v3

    .line 190
    .local v3, "isFirstInfo":[Z
    if-eqz v2, :cond_1

    .line 191
    aget-boolean v4, v2, v7

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    .line 192
    aget-boolean v4, v2, v6

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    .line 193
    aget-boolean v4, v2, v8

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    .line 194
    aget-boolean v4, v2, v9

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    .line 196
    :cond_1
    if-eqz v0, :cond_5

    .line 197
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    if-eqz v4, :cond_2

    .line 198
    aget v4, v0, v7

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    .line 199
    :cond_2
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    if-eqz v4, :cond_3

    .line 200
    aget v4, v0, v6

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    .line 201
    :cond_3
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    if-eqz v4, :cond_4

    .line 202
    aget v4, v0, v8

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    .line 203
    :cond_4
    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    if-eqz v4, :cond_5

    .line 204
    aget v4, v0, v9

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    .line 207
    :cond_5
    if-eqz v3, :cond_6

    .line 208
    aget-boolean v4, v3, v7

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z

    .line 209
    aget-boolean v4, v3, v6

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z

    .line 210
    aget-boolean v4, v3, v8

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z

    .line 211
    aget-boolean v4, v3, v9

    iput-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z

    .line 214
    :cond_6
    if-eqz v1, :cond_7

    .line 215
    aget v4, v1, v7

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    .line 216
    aget v4, v1, v6

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNameIndex:I

    .line 217
    aget v4, v1, v8

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    .line 218
    aget v4, v1, v9

    iput v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    .line 222
    .end local v0    # "checkedInfoArray":[I
    .end local v1    # "firstCheckedInfoArray":[I
    .end local v2    # "isChangedInfoArray":[Z
    .end local v3    # "isFirstInfo":[Z
    :cond_7
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mContext:Landroid/content/Context;

    .line 224
    const v4, 0x7f0401ec

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setContentView(I)V

    .line 226
    const v4, 0x7f09014b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mEmptyView:Landroid/view/View;

    .line 228
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 230
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->prepareData()V

    .line 231
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setupTitle()V

    .line 232
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 382
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 383
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 384
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 385
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMenuDone:Landroid/view/MenuItem;

    .line 386
    iget-object v3, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMenuDone:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mDoneUpdate:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 387
    return v2

    .line 386
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0, p0}, Lcom/android/contacts/list/ProviderStatusWatcher;->removeListener(Lcom/android/contacts/list/ProviderStatusWatcher$ProviderStatusListener;)V

    .line 267
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 269
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 1257
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    if-gez p3, :cond_1

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1258
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mAdapter:Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;

    invoke-virtual {v1, p3}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity$DefaultSettingAdapter;->getItem(I)Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;

    move-result-object v0

    .line 1259
    .local v0, "entry":Lcom/sec/android/app/contacts/activities/SetDefaultActivity$ViewEntry;
    if-eqz v0, :cond_0

    .line 1260
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    goto :goto_0
.end method

.method public onModeChanged(Z)V
    .locals 0
    .param p1, "isMultiWindow"    # Z

    .prologue
    .line 333
    if-nez p1, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setLayout()V

    .line 336
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 398
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 409
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 401
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 404
    :sswitch_1
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->performSaveAction()V

    goto :goto_0

    .line 398
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_1
        0x7f0904f6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 376
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 377
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->stop()V

    .line 378
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 392
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onProviderStatusChange()V
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->updateFlag(Z)V

    .line 273
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 259
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 260
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mProviderStatusWatcher:Lcom/android/contacts/list/ProviderStatusWatcher;

    invoke-virtual {v0}, Lcom/android/contacts/list/ProviderStatusWatcher;->start()V

    .line 261
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setLayout()V

    .line 262
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->updateFlag(Z)V

    .line 263
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 237
    new-array v0, v9, [I

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedPhotoIndex:I

    aput v4, v0, v5

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNameIndex:I

    aput v4, v0, v6

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedNumberIndex:I

    aput v4, v0, v7

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mCheckedEmailIndex:I

    aput v4, v0, v8

    .line 240
    .local v0, "checkedInfoArray":[I
    new-array v2, v9, [Z

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsPhotoChanged:Z

    aput-boolean v4, v2, v5

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNameChanged:Z

    aput-boolean v4, v2, v6

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsNumberChanged:Z

    aput-boolean v4, v2, v7

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsEmailChanged:Z

    aput-boolean v4, v2, v8

    .line 244
    .local v2, "isChangedArray":[Z
    new-array v1, v9, [I

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedPhotoIndex:I

    aput v4, v1, v5

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNameIndex:I

    aput v4, v1, v6

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedNumberIndex:I

    aput v4, v1, v7

    iget v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mFirstCheckedEmailIndex:I

    aput v4, v1, v8

    .line 247
    .local v1, "firstCheckedInfoArray":[I
    new-array v3, v9, [Z

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstPhoto:Z

    aput-boolean v4, v3, v5

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstName:Z

    aput-boolean v4, v3, v6

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstNumber:Z

    aput-boolean v4, v3, v7

    iget-boolean v4, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mIsFirstEmail:Z

    aput-boolean v4, v3, v8

    .line 250
    .local v3, "isFirstInfo":[Z
    const-string v4, "checkedInfoArray"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 251
    const-string v4, "isChangedInfoArray"

    invoke-virtual {p1, v4, v2}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 252
    const-string v4, "firstCheckedInfoArray"

    invoke-virtual {p1, v4, v1}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 253
    const-string v4, "isFirstInfo"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putBooleanArray(Ljava/lang/String;[Z)V

    .line 254
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 255
    return-void
.end method

.method public onSizeChanged(Landroid/graphics/Rect;)V
    .locals 0
    .param p1, "rectInfo"    # Landroid/graphics/Rect;

    .prologue
    .line 343
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 327
    iget-object v0, p0, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 328
    invoke-direct {p0}, Lcom/sec/android/app/contacts/activities/SetDefaultActivity;->setLayout()V

    .line 330
    :cond_0
    return-void
.end method

.method public onZoneChanged(I)V
    .locals 0
    .param p1, "zoneInfo"    # I

    .prologue
    .line 339
    return-void
.end method
