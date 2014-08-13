.class public Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ImportVCardPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;,
        Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;,
        Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;,
        Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;,
        Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;,
        Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;,
        Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;
    }
.end annotation


# static fields
.field static final CACHED_URIS:Ljava/lang/String; = "cached_uris"

.field private static final CANCEL_ITEM:I = 0x2

.field private static final CHARSET_EUC_KR:I = 0x1

.field static final ENTRY_COUNT_ARRAY:Ljava/lang/String; = "entry_count"

.field static final ESTIMATED_CHARSET_ARRAY:Ljava/lang/String; = "estimated_charset"

.field static final ESTIMATED_VCARD_TYPE_ARRAY:Ljava/lang/String; = "estimated_vcard_type"

.field private static final EXTRA_KEY_ITEM_INDEX:Ljava/lang/String; = "import.vcard.index"

.field private static final FAILURE_NOTIFICATION_ID:I = 0x1

.field private static final IMPORT_ITEM:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "VCardImportPreview"

.field private static final SECURE_DIRECTORY_NAME:Ljava/lang/String; = ".android_secure"

.field private static final SELECT_ACCOUNT:I = 0x0

.field private static final VCARD_PREVIEW_MAX_COUNT:I = 0x64

.field static final VCARD_URI_ARRAY:Ljava/lang/String; = "vcard_uri"

.field static final VCARD_VERSION_ARRAY:Ljava/lang/String; = "vcard_version"

.field static final VCARD_VERSION_AUTO_DETECT:I = 0x0

.field static final VCARD_VERSION_V21:I = 0x1

.field static final VCARD_VERSION_V30:I = 0x2

.field private static mLoadedVcardCount:I


# instance fields
.field private mAccount:Lcom/android/contacts/model/AccountWithDataSet;

.field private mActionBar:Landroid/app/ActionBar;

.field private mAdapter:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;

.field private mAllVCardFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelListener:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;

.field private mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

.field private mContactList:Landroid/widget/ListView;

.field private mCurrentIndex:I

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImportPath:Ljava/lang/String;

.field private mIsMultiAccount:Z

.field mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

.field private mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

.field private mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

.field private mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

.field private mShowImportedVcard:Z

.field private mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;

.field private mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;

.field private uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mHandler:Landroid/os/Handler;

    .line 156
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mShowImportedVcard:Z

    .line 160
    iput-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->uri:Landroid/net/Uri;

    .line 217
    new-instance v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-direct {v0, p0, v2}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;

    .line 221
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mIsMultiAccount:Z

    .line 1134
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mShowImportedVcard:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
    .param p1, "x1"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/model/AccountWithDataSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->startVCardSelectAndImport()V

    return-void
.end method

.method private buildAdapter(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/vcard/VCardData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1087
    .local p1, "nameAddressProperty":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/vcard/VCardData;>;"
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mContactList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1088
    new-instance v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;

    const v1, 0x7f040225

    invoke-direct {v0, p0, p0, v1, p1}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Landroid/content/Context;ILjava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAdapter:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;

    .line 1089
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mContactList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAdapter:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1091
    :cond_0
    return-void
.end method

.method private doScanExternalStorageAndImportVCard()V
    .locals 2

    .prologue
    .line 1027
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 1028
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1029
    :cond_0
    const v1, 0x7f090006

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 1034
    :goto_0
    return-void

    .line 1031
    :cond_1
    new-instance v1, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;

    .line 1032
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method private importVCard(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 752
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->importVCard([Landroid/net/Uri;)V

    .line 753
    return-void
.end method

.method private importVCard([Landroid/net/Uri;)V
    .locals 1
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 765
    new-instance v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;[Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 778
    return-void
.end method

.method private importVCard([Ljava/lang/String;)V
    .locals 4
    .param p1, "uriStrings"    # [Ljava/lang/String;

    .prologue
    .line 756
    array-length v1, p1

    .line 757
    .local v1, "length":I
    new-array v2, v1, [Landroid/net/Uri;

    .line 758
    .local v2, "uris":[Landroid/net/Uri;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 759
    aget-object v3, p1, v0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v0

    .line 758
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 761
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->importVCard([Landroid/net/Uri;)V

    .line 762
    return-void
.end method

.method private importVCardFromSDCard(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 731
    .local p1, "selectedVCardFileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 732
    .local v3, "size":I
    new-array v4, v3, [Ljava/lang/String;

    .line 733
    .local v4, "uriStrings":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 734
    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;

    .line 735
    .local v5, "vcardFile":Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v6

    const-string v7, "CscFeature_Contact_EnableBackupSvc4Ctc"

    invoke-virtual {v6, v7}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;->getName()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x23

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    .line 741
    new-instance v0, Ljava/io/File;

    invoke-virtual {v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 742
    .local v0, "file":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    .line 746
    .end local v0    # "file":Ljava/io/File;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "file://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    goto :goto_1

    .line 748
    .end local v5    # "vcardFile":Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->importVCard([Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method private initResources()V
    .locals 2

    .prologue
    .line 1055
    const v0, 0x7f090498

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mContactList:Landroid/widget/ListView;

    .line 1057
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mActionBar:Landroid/app/ActionBar;

    .line 1058
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mActionBar:Landroid/app/ActionBar;

    if-eqz v0, :cond_0

    .line 1059
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f0e01cd

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1061
    :cond_0
    return-void
.end method

.method private loadVCard()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x64

    .line 1064
    sput v7, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mLoadedVcardCount:I

    .line 1065
    new-instance v2, Lcom/android/contacts/vcard/VCardReader;

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->uri:Landroid/net/Uri;

    invoke-direct {v2, p0, v3, v7, v6}, Lcom/android/contacts/vcard/VCardReader;-><init>(Landroid/content/Context;Landroid/net/Uri;II)V

    .line 1066
    .local v2, "vRead":Lcom/android/contacts/vcard/VCardReader;
    invoke-virtual {v2}, Lcom/android/contacts/vcard/VCardReader;->getVCardDataList()Ljava/util/ArrayList;

    move-result-object v0

    .line 1067
    .local v0, "nameAddressProperty":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/vcard/VCardData;>;"
    invoke-virtual {v2}, Lcom/android/contacts/vcard/VCardReader;->getVCardEntryCount()I

    move-result v3

    sput v3, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mLoadedVcardCount:I

    .line 1069
    invoke-virtual {v2}, Lcom/android/contacts/vcard/VCardReader;->getVCardEntryCount()I

    move-result v3

    if-ne v3, v6, :cond_0

    .line 1079
    const v3, 0x7f0e0512

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1080
    .local v1, "text":Ljava/lang/String;
    invoke-static {p0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 1082
    .end local v1    # "text":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_1

    .line 1083
    check-cast v0, Ljava/util/ArrayList;

    .end local v0    # "nameAddressProperty":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/vcard/VCardData;>;"
    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->buildAdapter(Ljava/util/ArrayList;)V

    .line 1084
    :cond_1
    return-void
.end method

.method private setLayout()V
    .locals 6

    .prologue
    .line 846
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 847
    .local v2, "tv":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c020a

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 848
    invoke-virtual {v2}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    .line 849
    .local v0, "dimAmount":F
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 850
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-virtual {v3}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;->isMultiWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 851
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, 0x3f000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 866
    :cond_0
    :goto_0
    return-void

    .line 854
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 855
    .local v1, "param":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Window;->setDimAmount(F)V

    .line 856
    const/16 v3, 0x35

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 857
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 859
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c01d3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 861
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 862
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const v4, 0x7f040089

    invoke-virtual {v3, v4}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    goto :goto_0
.end method

.method private startImport()V
    .locals 5

    .prologue
    .line 887
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 889
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 890
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 891
    const-string v2, "VCardImportPreview"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Starting vCard import using Uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-direct {p0, v1}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->importVCard(Landroid/net/Uri;)V

    .line 897
    :goto_0
    return-void

    .line 894
    :cond_0
    const-string v2, "VCardImportPreview"

    const-string v3, "Start vCard without Uri. The user will select vCard manually."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->doScanExternalStorageAndImportVCard()V

    goto :goto_0
.end method

.method private startVCardSelectAndImport()V
    .locals 3

    .prologue
    .line 719
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 720
    .local v0, "size":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->importVCardFromSDCard(Ljava/util/List;)V

    .line 728
    :goto_0
    return-void

    .line 723
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 724
    new-instance v1, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;

    const v2, 0x7f090008

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 726
    :cond_2
    new-instance v1, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;

    const v2, 0x7f090009

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 870
    if-nez p1, :cond_0

    .line 871
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 872
    new-instance v0, Lcom/android/contacts/model/AccountWithDataSet;

    const-string v1, "account_name"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "account_type"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data_set"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 876
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->startImport()V

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    if-eqz p2, :cond_2

    .line 879
    const-string v0, "VCardImportPreview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result code was not OK nor CANCELED: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1104
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1105
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1106
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->setLayout()V

    .line 1109
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v7, 0x400

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 782
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 784
    const/4 v1, 0x0

    .line 785
    .local v1, "accountName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 786
    .local v2, "accountType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 788
    .local v4, "dataSet":Ljava/lang/String;
    const v6, 0x7f040224

    invoke-virtual {p0, v6}, Landroid/app/Activity;->setContentView(I)V

    .line 789
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->initResources()V

    .line 790
    iput-boolean v9, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mIsMultiAccount:Z

    .line 793
    invoke-static {p0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isMultiWindowSupported(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 794
    new-instance v6, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    invoke-direct {v6, p0}, Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;-><init>(Landroid/app/Activity;)V

    iput-object v6, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    .line 798
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v7, v7}, Landroid/view/Window;->setFlags(II)V

    .line 799
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/high16 v7, 0x800000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 800
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    const/16 v7, 0x2000

    invoke-virtual {v6, v7}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 801
    invoke-virtual {p0, v8}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 803
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->setLayout()V

    .line 805
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 806
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_2

    .line 807
    const-string v6, "account_name"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 808
    const-string v6, "account_type"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 809
    const-string v6, "data_set"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 810
    const-string v6, "importPath"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    .line 812
    const-string v6, "showDetail"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mShowImportedVcard:Z

    .line 814
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->uri:Landroid/net/Uri;

    .line 815
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->loadVCard()V

    .line 819
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 820
    new-instance v6, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v6, v1, v2, v4}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 834
    :cond_1
    :goto_1
    return-void

    .line 817
    :cond_2
    const-string v6, "VCardImportPreview"

    const-string v7, "intent does not exist"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 822
    :cond_3
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 823
    .local v3, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v3, v8}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 824
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_4

    .line 825
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    goto :goto_1

    .line 826
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    if-ne v6, v8, :cond_5

    .line 827
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/model/AccountWithDataSet;

    iput-object v6, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    goto :goto_1

    .line 829
    :cond_5
    if-eqz p1, :cond_6

    const-string v6, "saveinstance"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eq v6, v8, :cond_1

    .line 830
    :cond_6
    iput-boolean v8, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mIsMultiAccount:Z

    goto :goto_1
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "resId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0e00d9

    const v9, 0x1010355

    const/4 v6, 0x1

    const v8, 0x104000a

    const/4 v7, 0x0

    .line 901
    packed-switch p1, :pswitch_data_0

    .line 988
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    :goto_0
    return-object v3

    .line 903
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 904
    const/4 v3, 0x0

    goto :goto_0

    .line 906
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 907
    const v3, 0x7f0e00d0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 908
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    sget-object v4, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0e02c1

    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 911
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0, v2, v1, v6, v7}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    .line 913
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 914
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 916
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 908
    .restart local v2    # "title":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0e00d8

    goto :goto_1

    .line 919
    .end local v2    # "title":Ljava/lang/String;
    :pswitch_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    sget-object v5, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0e02bf

    :goto_2
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    sget-object v5, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f0e02c0

    :goto_3
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 928
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto :goto_0

    .line 919
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_3
    const v3, 0x7f0e00ce

    goto :goto_2

    :cond_4
    const v3, 0x7f0e00cf

    goto :goto_3

    .line 931
    :pswitch_3
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    sget-object v5, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f0e02c4

    :goto_4
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 934
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    sget-object v6, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f0e02c2

    :goto_5
    invoke-virtual {v5, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 941
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 931
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "message":Ljava/lang/String;
    :cond_5
    const v3, 0x7f0e00df

    goto :goto_4

    .restart local v1    # "message":Ljava/lang/String;
    :cond_6
    move v3, v4

    .line 934
    goto :goto_5

    .line 944
    .end local v1    # "message":Ljava/lang/String;
    :pswitch_4
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_7

    .line 945
    const v3, 0x7f0e00e2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 946
    .restart local v2    # "title":Ljava/lang/String;
    const v3, 0x7f0e00e3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 947
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    .line 948
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 949
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 950
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 951
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 952
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 953
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->startVCardService()V

    .line 955
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_7
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 958
    :pswitch_5
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    sget-object v5, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const v3, 0x7f0e02c3

    :goto_6
    new-array v5, v6, [Ljava/lang/Object;

    const v6, 0x7f0e00db

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p0, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 962
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;

    sget-object v6, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const v4, 0x7f0e02c2

    :cond_8
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 970
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 958
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "message":Ljava/lang/String;
    :cond_9
    const v3, 0x7f0e00da

    goto :goto_6

    .line 973
    :pswitch_6
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mErrorMessage:Ljava/lang/String;

    .line 974
    .restart local v1    # "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 975
    const-string v3, "VCardImportPreview"

    const-string v4, "Error message is null while it must not."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const v3, 0x7f0e00e0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 978
    :cond_a
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e00e6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$CancelListener;

    invoke-virtual {v3, v8, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 984
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 901
    :pswitch_data_0
    .packed-switch 0x7f090005
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1094
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1095
    .local v0, "inflater":Landroid/view/MenuInflater;
    const v1, 0x7f12000f

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1096
    const v1, 0x7f0904db

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0e025f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1097
    const v1, 0x7f0904f6

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f0e0062

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1099
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 1112
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 1131
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 1115
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1119
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mIsMultiAccount:Z

    if-eqz v1, :cond_0

    .line 1120
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1123
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->startImport()V

    .line 1124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1125
    invoke-virtual {p0, v3, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    .line 1112
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0904db -> :sswitch_1
        0x7f0904f6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 1013
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1014
    const-string v0, "import.vcard.index"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mCurrentIndex:I

    .line 1015
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 1016
    const-string v0, "VCardImportPreview"

    const-string v1, "Cache thread is still running. Show progress dialog again."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 1019
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 1006
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1007
    const-string v0, "import.vcard.index"

    iget v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mCurrentIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1008
    const-string v0, "saveinstance"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1009
    return-void
.end method

.method public onWindowStatusChanged(ZZZ)V
    .locals 1
    .param p1, "isMaximized"    # Z
    .param p2, "isMinimized"    # Z
    .param p3, "isPinup"    # Z

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mMW:Lcom/samsung/android/sdk/multiwindow/SMultiWindowActivity;

    if-eqz v0, :cond_0

    .line 838
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->setLayout()V

    .line 840
    :cond_0
    return-void
.end method

.method showFailureNotification(I)V
    .locals 4
    .param p1, "reasonId"    # I

    .prologue
    .line 1037
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1039
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 1043
    .local v0, "notification":Landroid/app/Notification;
    const-string v2, "VCardServiceFailure"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 1045
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$2;

    invoke-direct {v3, p0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$2;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1052
    return-void
.end method

.method startVCardService()V
    .locals 4

    .prologue
    .line 992
    new-instance v1, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;)V

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    .line 994
    const-string v1, "VCardImportPreview"

    const-string v2, "Bind to VCardService."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 997
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 998
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 1000
    return-void
.end method
