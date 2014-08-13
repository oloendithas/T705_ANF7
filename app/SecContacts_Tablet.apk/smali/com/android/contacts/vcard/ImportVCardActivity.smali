.class public Lcom/android/contacts/vcard/ImportVCardActivity;
.super Lcom/android/contacts/ContactsActivity;
.source "ImportVCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;,
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;,
        Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;,
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;,
        Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;,
        Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;,
        Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;,
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    }
.end annotation


# static fields
.field static final CACHED_URIS:Ljava/lang/String; = "cached_uris"

.field private static final CHARSET_EUC_KR:I = 0x1

.field private static final CHARSET_UTF_8:I = 0x0

.field static final ENTRY_COUNT_ARRAY:Ljava/lang/String; = "entry_count"

.field static final ESTIMATED_CHARSET_ARRAY:Ljava/lang/String; = "estimated_charset"

.field static final ESTIMATED_VCARD_TYPE_ARRAY:Ljava/lang/String; = "estimated_vcard_type"

.field private static final EXTRA_KEY_ITEM_INDEX:Ljava/lang/String; = "import.vcard.index"

.field private static final EXTRA_NO_PREVIEW:Ljava/lang/String; = "noPreview"

.field private static final FAILURE_NOTIFICATION_ID:I = 0x1

.field private static final KEY_EXTRA_SHOW_DETAIL:Ljava/lang/String; = "showDetail"

.field private static final KEY_EXTRA_SHOW_SELECT_ACCOUNT:Ljava/lang/String; = "showSelectAccount"

.field private static final KEY_EXTRA_TITLE_NAME:Ljava/lang/String; = "title_name"

.field private static final LOG_TAG:Ljava/lang/String; = "VCardImport"

.field private static final REQUEST_PREVIEW:I = 0x1

.field private static final SECURE_DIRECTORY_NAME:Ljava/lang/String; = ".android_secure"

.field private static final SELECT_ACCOUNT:I = 0x0

.field static final VCARD_URI_ARRAY:Ljava/lang/String; = "vcard_uri"

.field static final VCARD_VERSION_ARRAY:Ljava/lang/String; = "vcard_version"

.field static final VCARD_VERSION_AUTO_DETECT:I = 0x0

.field static final VCARD_VERSION_V21:I = 0x1

.field static final VCARD_VERSION_V30:I = 0x2

.field private static mIsPreviewMode:Z

.field private static mStorageListener:Landroid/os/storage/StorageEventListener;

.field private static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private mAccount:Lcom/android/contacts/model/AccountWithDataSet;

.field private mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

.field private mAllVCardFileList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

.field private mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

.field private mCurrentIndex:I

.field private mErrorMessage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mImportPath:Ljava/lang/String;

.field mListener:Lcom/android/contacts/vcard/VCardImportExportListener;

.field private mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

.field private mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

.field private mShowImportedVcard:Z

.field private mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

.field private mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 305
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/contacts/vcard/ImportVCardActivity;->mIsPreviewMode:Z

    .line 317
    new-instance v0, Lcom/android/contacts/vcard/ImportVCardActivity$1;

    invoke-direct {v0}, Lcom/android/contacts/vcard/ImportVCardActivity$1;-><init>()V

    sput-object v0, Lcom/android/contacts/vcard/ImportVCardActivity;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 325
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/vcard/ImportVCardActivity;->mStorageManager:Landroid/os/storage/StorageManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/contacts/ContactsActivity;-><init>()V

    .line 293
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    .line 303
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mShowImportedVcard:Z

    .line 437
    new-instance v0, Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    .line 1349
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/contacts/vcard/ImportVCardActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->startVCardSelectAndImport()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/vcard/ImportVCardActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mShowImportedVcard:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;)Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/model/AccountWithDataSet;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/vcard/ImportVCardActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 205
    iget v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCurrentIndex:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/contacts/vcard/ImportVCardActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # I

    .prologue
    .line 205
    iput p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCurrentIndex:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p1, "x1"    # Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCardFromSDCard(Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;)V

    return-void
.end method

.method private doScanExternalStorageAndImportVCard()V
    .locals 2

    .prologue
    .line 2306
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2308
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

    .line 2310
    :cond_0
    const v1, 0x7f090006

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    .line 2320
    :goto_0
    return-void

    .line 2314
    :cond_1
    new-instance v1, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;

    invoke-direct {v1, p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;

    .line 2316
    const v1, 0x7f090005

    invoke-virtual {p0, v1}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0
.end method

.method private getSelectImportTypeDialog()Landroid/app/Dialog;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1722
    new-instance v2, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportTypeSelectedListener;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    .line 1724
    .local v2, "listener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e00e1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x1040000

    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1736
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/String;

    .line 1738
    .local v1, "items":[Ljava/lang/String;
    const v3, 0x7f0e00d5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v6

    .line 1742
    const/4 v3, 0x1

    const v4, 0x7f0e00d6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1746
    const/4 v3, 0x2

    const v4, 0x7f0e00d7

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 1750
    invoke-virtual {v0, v1, v6, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1752
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private getVCardFileSelectDialog(Z)Landroid/app/Dialog;
    .locals 14
    .param p1, "multipleSelect"    # Z

    .prologue
    const/4 v9, 0x0

    .line 1760
    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v6

    .line 1762
    .local v6, "size":I
    if-nez v6, :cond_0

    .line 1830
    :goto_0
    return-object v9

    .line 1768
    :cond_0
    new-instance v5, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;

    invoke-direct {v5, p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Z)V

    .line 1770
    .local v5, "listener":Lcom/android/contacts/vcard/ImportVCardActivity$VCardSelectedListener;
    new-instance v10, Landroid/app/AlertDialog$Builder;

    invoke-direct {v10, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v11, 0x7f0e00e1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    invoke-virtual {v10, v11, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    iget-object v12, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1784
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    new-array v4, v6, [Ljava/lang/CharSequence;

    .line 1786
    .local v4, "items":[Ljava/lang/CharSequence;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v10, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1788
    .local v1, "dateFormat":Ljava/text/DateFormat;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v6, :cond_1

    .line 1790
    iget-object v10, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    .line 1792
    .local v8, "vcardFile":Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1794
    .local v7, "stringBuilder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v8}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1796
    const/16 v10, 0xa

    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1798
    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    .line 1806
    .local v3, "indexToBeSpanned":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    new-instance v11, Ljava/util/Date;

    invoke-virtual {v8}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->getLastModified()J

    move-result-wide v12

    invoke-direct {v11, v12, v13}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v11}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1810
    new-instance v10, Landroid/text/style/RelativeSizeSpan;

    const v11, 0x3f333333

    invoke-direct {v10, v11}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v11

    const/16 v12, 0x21

    invoke-virtual {v7, v10, v3, v11, v12}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1816
    aput-object v7, v4, v2

    .line 1788
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1820
    .end local v3    # "indexToBeSpanned":I
    .end local v7    # "stringBuilder":Landroid/text/SpannableStringBuilder;
    .end local v8    # "vcardFile":Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    :cond_1
    if-eqz p1, :cond_2

    .line 1822
    check-cast v9, [Z

    invoke-virtual {v0, v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1830
    :goto_2
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v9

    goto/16 :goto_0

    .line 1826
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v0, v4, v9, v5}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_2
.end method

.method private importVCard(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1664
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 1666
    return-void
.end method

.method private importVCard([Landroid/net/Uri;)V
    .locals 1
    .param p1, "uris"    # [Landroid/net/Uri;

    .prologue
    .line 1690
    new-instance v0, Lcom/android/contacts/vcard/ImportVCardActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/vcard/ImportVCardActivity$2;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;[Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1716
    return-void
.end method

.method private importVCard([Ljava/lang/String;)V
    .locals 4
    .param p1, "uriStrings"    # [Ljava/lang/String;

    .prologue
    .line 1672
    array-length v1, p1

    .line 1674
    .local v1, "length":I
    new-array v2, v1, [Landroid/net/Uri;

    .line 1676
    .local v2, "uris":[Landroid/net/Uri;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1678
    aget-object v3, p1, v0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1676
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1682
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 1684
    return-void
.end method

.method private importVCardFromSDCard(Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;)V
    .locals 4
    .param p1, "vcardFile"    # Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    .prologue
    .line 1656
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Landroid/net/Uri;)V

    .line 1658
    return-void
.end method

.method private importVCardFromSDCard(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1634
    .local p1, "selectedVCardFileList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 1636
    .local v2, "size":I
    new-array v3, v2, [Ljava/lang/String;

    .line 1638
    .local v3, "uriStrings":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 1640
    .local v0, "i":I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    .line 1642
    .local v4, "vcardFile":Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;->getCanonicalPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v0

    .line 1644
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1648
    .end local v4    # "vcardFile":Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    :cond_0
    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard([Ljava/lang/String;)V

    .line 1650
    return-void
.end method

.method private startImport()V
    .locals 5

    .prologue
    .line 1969
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1973
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1975
    .local v1, "uri":Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 1977
    const-string v2, "VCardImport"

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

    .line 1979
    invoke-direct {p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCard(Landroid/net/Uri;)V

    .line 1989
    :goto_0
    return-void

    .line 1983
    :cond_0
    const-string v2, "VCardImport"

    const-string v3, "Start vCard without Uri. The user will select vCard manually."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1985
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->doScanExternalStorageAndImportVCard()V

    goto :goto_0
.end method

.method private startVCardSelectAndImport()V
    .locals 3

    .prologue
    .line 1610
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1612
    .local v0, "size":I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1616
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;

    invoke-direct {p0, v1}, Lcom/android/contacts/vcard/ImportVCardActivity;->importVCardFromSDCard(Ljava/util/List;)V

    .line 1628
    :goto_0
    return-void

    .line 1618
    :cond_1
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1620
    new-instance v1, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    const v2, 0x7f090008

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1624
    :cond_2
    new-instance v1, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    const v2, 0x7f090009

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

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
    .line 1934
    if-nez p1, :cond_3

    .line 1936
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 1938
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

    iput-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 1946
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->startImport()V

    .line 1963
    :cond_0
    :goto_0
    return-void

    .line 1950
    :cond_1
    if-eqz p2, :cond_2

    .line 1952
    const-string v0, "VCardImport"

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

    .line 1956
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1959
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1960
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2278
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2288
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/16 v10, 0x400

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1840
    invoke-super {p0, p1}, Lcom/android/contacts/ContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 1842
    const/4 v8, 0x0

    .line 1845
    .local v8, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 1846
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v9

    const/16 v10, 0x2000

    invoke-virtual {v9, v10}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 1849
    const/4 v1, 0x0

    .line 1851
    .local v1, "accountName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1853
    .local v2, "accountType":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1854
    .local v4, "dataSet":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1855
    .local v7, "showSelectAccount":Z
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 1857
    .local v5, "intent":Landroid/content/Intent;
    if-eqz v5, :cond_3

    .line 1859
    const-string v9, "account_name"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1861
    const-string v9, "account_type"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1863
    const-string v9, "data_set"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1864
    invoke-virtual {v5}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v8

    .line 1865
    const-string v9, "importPath"

    invoke-virtual {v5, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    .line 1867
    if-eqz v8, :cond_0

    const-string v9, "noPreview"

    invoke-virtual {v5, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1868
    sput-boolean v11, Lcom/android/contacts/vcard/ImportVCardActivity;->mIsPreviewMode:Z

    .line 1872
    :cond_0
    const-string v9, "showDetail"

    invoke-virtual {v5, v9, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mShowImportedVcard:Z

    .line 1882
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1884
    new-instance v9, Lcom/android/contacts/model/AccountWithDataSet;

    invoke-direct {v9, v1, v2, v4}, Lcom/android/contacts/model/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    .line 1911
    :cond_1
    :goto_1
    sget-boolean v9, Lcom/android/contacts/vcard/ImportVCardActivity;->mIsPreviewMode:Z

    if-eqz v9, :cond_9

    if-eqz v8, :cond_9

    .line 1912
    new-instance v6, Landroid/content/Intent;

    const-class v9, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-direct {v6, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1913
    .local v6, "newIntent":Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1914
    const-string v9, "showSelectAccount"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1915
    invoke-virtual {v6, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1916
    if-eqz v5, :cond_2

    .line 1917
    const-string v9, "showDetail"

    const-string v10, "showDetail"

    invoke-virtual {v5, v10, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1919
    const-string v9, "title_name"

    const-string v10, "title_name"

    invoke-virtual {v5, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1922
    :cond_2
    invoke-virtual {p0, v6, v11}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1926
    .end local v6    # "newIntent":Landroid/content/Intent;
    :goto_2
    return-void

    .line 1876
    :cond_3
    const-string v9, "VCardImport"

    const-string v10, "intent does not exist"

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1888
    :cond_4
    invoke-static {p0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v3

    .line 1890
    .local v3, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v3, v11}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 1892
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 1894
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    goto :goto_1

    .line 1896
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v11, :cond_6

    .line 1898
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/model/AccountWithDataSet;

    iput-object v9, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;

    goto :goto_1

    .line 1902
    :cond_6
    sget-boolean v9, Lcom/android/contacts/vcard/ImportVCardActivity;->mIsPreviewMode:Z

    if-eqz v9, :cond_7

    .line 1903
    const/4 v7, 0x1

    goto :goto_1

    .line 1904
    :cond_7
    if-eqz p1, :cond_8

    const-string v9, "saveinstance"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eq v9, v11, :cond_1

    .line 1905
    :cond_8
    new-instance v9, Landroid/content/Intent;

    const-class v10, Lcom/android/contacts/vcard/SelectAccountActivity;

    invoke-direct {v9, p0, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v9, v12}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 1925
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v3    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    :cond_9
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->startImport()V

    goto :goto_2
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 10
    .param p1, "resId"    # I
    .param p2, "bundle"    # Landroid/os/Bundle;

    .prologue
    const v4, 0x7f0e02c2

    const v5, 0x7f0e00d9

    const/4 v7, 0x1

    const v9, 0x104000a

    const/4 v8, 0x0

    .line 1997
    sparse-switch p1, :sswitch_data_0

    .line 2206
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    :goto_0
    return-object v3

    .line 2001
    :sswitch_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    if-nez v3, :cond_0

    .line 2003
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "mAccountSelectionListener must not be null."

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 2009
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mAccountSelectionListener:Lcom/android/contacts/util/AccountSelectionUtil$AccountSelectedListener;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-static {p0, p1, v3, v4}, Lcom/android/contacts/util/AccountSelectionUtil;->getSelectAccountDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object v3

    goto :goto_0

    .line 2017
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2019
    const/4 v3, 0x0

    goto :goto_0

    .line 2022
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 2024
    const v3, 0x7f0e00d0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2026
    .local v2, "title":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    sget-object v4, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0e02c1

    :goto_1
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2032
    .local v1, "message":Ljava/lang/String;
    invoke-static {p0, v2, v1, v7, v8}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    .line 2036
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2038
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardScanThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 2042
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 2026
    .restart local v2    # "title":Ljava/lang/String;
    :cond_3
    const v3, 0x7f0e00d8

    goto :goto_1

    .line 2048
    .end local v2    # "title":Ljava/lang/String;
    :sswitch_2
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    sget-object v5, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const v3, 0x7f0e02bf

    :goto_2
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    sget-object v5, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f0e02c0

    :goto_3
    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2068
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 2048
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_4
    const v3, 0x7f0e00ce

    goto :goto_2

    :cond_5
    const v3, 0x7f0e00cf

    goto :goto_3

    .line 2074
    :sswitch_3
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    sget-object v6, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const v3, 0x7f0e02c4

    :goto_4
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2080
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v4

    :goto_5
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2094
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 2074
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "message":Ljava/lang/String;
    :cond_6
    const v3, 0x7f0e00df

    goto :goto_4

    .restart local v1    # "message":Ljava/lang/String;
    :cond_7
    move v3, v5

    .line 2080
    goto :goto_5

    .line 2100
    .end local v1    # "message":Ljava/lang/String;
    :sswitch_4
    invoke-direct {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->getSelectImportTypeDialog()Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 2106
    :sswitch_5
    invoke-direct {p0, v7}, Lcom/android/contacts/vcard/ImportVCardActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 2112
    :sswitch_6
    invoke-direct {p0, v8}, Lcom/android/contacts/vcard/ImportVCardActivity;->getVCardFileSelectDialog(Z)Landroid/app/Dialog;

    move-result-object v3

    goto/16 :goto_0

    .line 2118
    :sswitch_7
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-nez v3, :cond_8

    .line 2120
    const v3, 0x7f0e00e2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2122
    .restart local v2    # "title":Ljava/lang/String;
    const v3, 0x7f0e00e3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2124
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v3, Landroid/app/ProgressDialog;

    invoke-direct {v3, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    .line 2126
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2128
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2130
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v8}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 2132
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mVCardCacheThread:Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 2134
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    invoke-virtual {v3, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2136
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity;->startVCardService()V

    .line 2140
    .end local v1    # "message":Ljava/lang/String;
    .end local v2    # "title":Ljava/lang/String;
    :cond_8
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 2146
    :sswitch_8
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    sget-object v6, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const v3, 0x7f0e02c3

    :goto_6
    new-array v6, v7, [Ljava/lang/Object;

    const v7, 0x7f0e00db

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v3, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2154
    .restart local v1    # "message":Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;

    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    :goto_7
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2170
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 2146
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "message":Ljava/lang/String;
    :cond_9
    const v3, 0x7f0e00da

    goto :goto_6

    .restart local v1    # "message":Ljava/lang/String;
    :cond_a
    move v4, v5

    .line 2154
    goto :goto_7

    .line 2176
    .end local v1    # "message":Ljava/lang/String;
    :sswitch_9
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mErrorMessage:Ljava/lang/String;

    .line 2178
    .restart local v1    # "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 2180
    const-string v3, "VCardImport"

    const-string v4, "Error message is null while it must not."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    const v3, 0x7f0e00e0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2186
    :cond_b
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0e00e6

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCancelListener:Lcom/android/contacts/vcard/ImportVCardActivity$CancelListener;

    invoke-virtual {v3, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2198
    .restart local v0    # "builder":Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    goto/16 :goto_0

    .line 1997
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090005 -> :sswitch_1
        0x7f090006 -> :sswitch_2
        0x7f090007 -> :sswitch_3
        0x7f090008 -> :sswitch_4
        0x7f090009 -> :sswitch_6
        0x7f09000a -> :sswitch_5
        0x7f09000b -> :sswitch_7
        0x7f09000c -> :sswitch_8
        0x7f09000d -> :sswitch_9
        0x7f0e00d3 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 2258
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 2260
    const-string v0, "import.vcard.index"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCurrentIndex:I

    .line 2262
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 2264
    const-string v0, "VCardImport"

    const-string v1, "Cache thread is still running. Show progress dialog again."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    const v0, 0x7f09000b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 2270
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 2244
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2246
    const-string v0, "import.vcard.index"

    iget v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mCurrentIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2248
    const-string v0, "saveinstance"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2250
    return-void
.end method

.method showFailureNotification(I)V
    .locals 4
    .param p1, "reasonId"    # I

    .prologue
    .line 2326
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2330
    .local v1, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/contacts/vcard/NotificationImportExportListener;->constructImportFailureNotification(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v0

    .line 2338
    .local v0, "notification":Landroid/app/Notification;
    const-string v2, "VCardServiceFailure"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 2342
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/contacts/vcard/ImportVCardActivity$3;

    invoke-direct {v3, p0}, Lcom/android/contacts/vcard/ImportVCardActivity$3;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2356
    return-void
.end method

.method startVCardService()V
    .locals 4

    .prologue
    .line 2214
    new-instance v1, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    .line 2218
    const-string v1, "VCardImport"

    const-string v2, "Bind to VCardService."

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 2222
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2224
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 2226
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/contacts/vcard/VCardService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 2230
    return-void
.end method
