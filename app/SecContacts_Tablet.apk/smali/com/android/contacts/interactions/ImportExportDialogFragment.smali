.class public Lcom/android/contacts/interactions/ImportExportDialogFragment;
.super Landroid/app/DialogFragment;
.source "ImportExportDialogFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
.implements Lcom/android/contacts/editor/SelectSimDialogFragment$Listener;


# static fields
.field private static final EXPORT_PATH:Ljava/lang/String; = "/Contacts/Export"

.field private static final KEY_IMPORT_PATH:Ljava/lang/String; = "importPath"

.field private static final KEY_IMPORT_SIMID:Ljava/lang/String; = "importSIMID"

.field private static final KEY_RES_ID:Ljava/lang/String; = "resourceId"

.field public static final SIM2_ACCOUNT_TYPE:Ljava/lang/String; = "vnd.sec.contact.sim2"

.field public static final SIM_ACCOUNT_TYPE:Ljava/lang/String; = "vnd.sec.contact.sim"

.field private static final SIM_ONE:I = 0x1

.field private static final SIM_ZERO:I = 0x0

.field public static final TAG:Ljava/lang/String; = "ImportExportDialogFragment"

.field public static mContactsCount:I

.field public static mExternalSdCardMounted:Z

.field public static mExternalSdCardStoragePath:Ljava/lang/String;

.field public static mSdCardMounted:Z

.field public static mSdCardStoragePath:Ljava/lang/String;

.field public static mStorageListener:Landroid/os/storage/StorageEventListener;

.field public static mStorageManager:Landroid/os/storage/StorageManager;


# instance fields
.field private final LOOKUP_PROJECTION:[Ljava/lang/String;

.field private isAirplaneMode:Z

.field public mImportPath:Ljava/lang/String;

.field private mPreferences:Lcom/android/contacts/preference/ContactsPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 104
    new-instance v0, Lcom/android/contacts/interactions/ImportExportDialogFragment$1;

    invoke-direct {v0}, Lcom/android/contacts/interactions/ImportExportDialogFragment$1;-><init>()V

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageListener:Landroid/os/storage/StorageEventListener;

    .line 108
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 109
    const-string v0, ""

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 110
    sput-boolean v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    .line 112
    const-string v0, ""

    sput-object v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    .line 113
    sput-boolean v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    .line 91
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "lookup"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/interactions/ImportExportDialogFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/interactions/ImportExportDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->handleDualStandbyImportRequest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/contacts/interactions/ImportExportDialogFragment;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/interactions/ImportExportDialogFragment;
    .param p1, "x1"    # I

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->handleImportRequest(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/contacts/interactions/ImportExportDialogFragment;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/contacts/interactions/ImportExportDialogFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getVcardName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private checkStorageState()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 749
    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    if-nez v7, :cond_0

    .line 750
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "storage"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManager;

    sput-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 751
    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    sget-object v8, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageListener:Landroid/os/storage/StorageEventListener;

    invoke-virtual {v7, v8}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 753
    :cond_0
    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v5

    .line 754
    .local v5, "storageVolumes":[Landroid/os/storage/StorageVolume;
    array-length v1, v5

    .line 755
    .local v1, "length":I
    const-string v3, ""

    .line 756
    .local v3, "storagePath":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_6

    .line 757
    aget-object v4, v5, v0

    .line 758
    .local v4, "storageVolume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getSubSystem()Ljava/lang/String;

    move-result-object v6

    .line 759
    .local v6, "subsystem":Ljava/lang/String;
    if-eqz v6, :cond_1

    .line 760
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 761
    sget-object v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v7, v3}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 762
    .local v2, "state":Ljava/lang/String;
    const-string v7, "fuse"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 763
    sput-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    .line 764
    const-string v7, "mounted"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 765
    sput-boolean v10, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    .line 756
    .end local v2    # "state":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 767
    .restart local v2    # "state":Ljava/lang/String;
    :cond_2
    sput-boolean v9, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    goto :goto_1

    .line 769
    :cond_3
    const-string v7, "sd"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 770
    invoke-virtual {v4}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    if-nez v7, :cond_5

    .line 772
    sput-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    .line 773
    const-string v7, "mounted"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 774
    sput-boolean v10, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    goto :goto_1

    .line 776
    :cond_4
    sput-boolean v9, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    goto :goto_1

    .line 779
    :cond_5
    sput-object v3, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    .line 780
    const-string v7, "mounted"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 781
    sput-boolean v10, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    .line 790
    .end local v2    # "state":Ljava/lang/String;
    .end local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    .end local v6    # "subsystem":Ljava/lang/String;
    :cond_6
    return-void

    .line 784
    .restart local v2    # "state":Ljava/lang/String;
    .restart local v4    # "storageVolume":Landroid/os/storage/StorageVolume;
    .restart local v6    # "subsystem":Ljava/lang/String;
    :cond_7
    sput-boolean v9, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    goto :goto_1
.end method

.method private doShareVisibleContacts()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .line 643
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 645
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 647
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 648
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0120

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 672
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 675
    :cond_0
    :goto_0
    return-void

    .line 652
    :cond_1
    :try_start_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 653
    .local v11, "uriListBuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 655
    .local v8, "index":I
    :cond_2
    if-eqz v8, :cond_3

    .line 656
    const/16 v0, 0x3a

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    add-int/lit8 v8, v8, 0x1

    .line 659
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 660
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 664
    .local v10, "uri":Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "text/x-vcard"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 669
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Lcom/android/contacts/ContactsUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v6

    .line 670
    .local v6, "chooseIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 672
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "chooseIntent":Landroid/content/Intent;
    .end local v8    # "index":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "uriListBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getVcardName()Ljava/lang/String;
    .locals 11

    .prologue
    const v10, 0x7f0e0210

    const/16 v9, 0xa0

    const/4 v1, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 545
    sget v0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mContactsCount:I

    if-ne v0, v1, :cond_6

    .line 546
    new-array v2, v1, [Ljava/lang/String;

    const-string v0, "display_name"

    aput-object v0, v2, v8

    .line 549
    .local v2, "display_name_projection":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 550
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 552
    .local v7, "name_cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 553
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 554
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 555
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 558
    const-string v0, "/"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 559
    const-string v0, "/"

    const-string v1, "-"

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 561
    :cond_0
    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 564
    :cond_1
    if-eqz v6, :cond_2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 565
    :cond_2
    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 568
    :cond_3
    if-eqz v7, :cond_4

    .line 569
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 572
    :cond_4
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Contact_LimitNameLength"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getInteger(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xfa

    if-ne v0, v1, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v9, :cond_5

    .line 574
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v0

    invoke-virtual {v0, v6, v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->trimTextByLength(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    .line 578
    .end local v2    # "display_name_projection":[Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    .end local v7    # "name_cursor":Landroid/database/Cursor;
    :cond_5
    :goto_0
    return-object v6

    :cond_6
    invoke-virtual {p0, v10}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private handleDualStandbyImportRequest(I)Z
    .locals 9
    .param p1, "resId"    # I

    .prologue
    const/4 v8, 0x1

    .line 805
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v2

    .line 807
    .local v2, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    const/4 v0, 0x0

    .line 808
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    sget-object v1, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM1:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 809
    .local v1, "accountListFilter":Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;
    sparse-switch p1, :sswitch_data_0

    .line 821
    const-string v5, "ImportExportDialogFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleDualStandbyImportRequest : default case : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    :goto_0
    const/4 v4, 0x0

    .line 825
    .local v4, "size":I
    if-eqz v0, :cond_0

    .line 826
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 828
    :cond_0
    if-le v4, v8, :cond_1

    .line 829
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 830
    .local v3, "args":Landroid/os/Bundle;
    const-string v5, "resourceId"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 831
    const-string v5, "importPath"

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getImportPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    const v6, 0x7f0e0296

    invoke-static {v5, p0, v6, v1, v3}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 839
    .end local v3    # "args":Landroid/os/Bundle;
    :cond_1
    return v8

    .line 811
    .end local v4    # "size":I
    :sswitch_0
    invoke-virtual {v2}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim1()Ljava/util/List;

    move-result-object v0

    .line 812
    sget-object v1, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM1:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 813
    goto :goto_0

    .line 816
    :sswitch_1
    invoke-virtual {v2}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim2()Ljava/util/List;

    move-result-object v0

    .line 817
    sget-object v1, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    .line 818
    goto :goto_0

    .line 809
    :sswitch_data_0
    .sparse-switch
        0x7f0e00d1 -> :sswitch_0
        0x7f0e03f7 -> :sswitch_1
    .end sparse-switch
.end method

.method private handleImportRequest(I)Z
    .locals 8
    .param p1, "resId"    # I

    .prologue
    const/4 v7, 0x1

    .line 687
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 689
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 690
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 693
    .local v3, "size":I
    packed-switch p1, :pswitch_data_0

    .line 706
    :goto_0
    if-le v3, v7, :cond_0

    .line 708
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 709
    .local v2, "args":Landroid/os/Bundle;
    const-string v4, "resourceId"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 710
    const-string v4, "importPath"

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getImportPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const v5, 0x7f0e0296

    sget-object v6, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v4, p0, v5, v6, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 724
    .end local v2    # "args":Landroid/os/Bundle;
    :goto_1
    return v7

    .line 695
    :pswitch_0
    sget-object v4, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->setImportPath(Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :pswitch_1
    sget-object v4, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardStoragePath:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->setImportPath(Ljava/lang/String;)V

    goto :goto_0

    .line 722
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-ne v3, v7, :cond_1

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/AccountWithDataSet;

    :goto_2
    invoke-static {v5, p1, v4}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    goto :goto_2

    .line 693
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e02bd
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sendVcardByType(I)V
    .locals 14
    .param p1, "sendType"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v13, 0x0

    .line 589
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->LOOKUP_PROJECTION:[Ljava/lang/String;

    const-string v3, "in_visible_group!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 591
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 592
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_1

    .line 593
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0e0120

    invoke-static {v0, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 594
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 639
    :cond_0
    :goto_0
    return-void

    .line 597
    :cond_1
    if-nez p1, :cond_4

    .line 599
    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 600
    .local v11, "uriListBuilder":Ljava/lang/StringBuilder;
    const/4 v8, 0x0

    .line 602
    .local v8, "index":I
    :cond_2
    if-eqz v8, :cond_3

    .line 603
    const/16 v0, 0x3a

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 604
    :cond_3
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 605
    add-int/lit8 v8, v8, 0x1

    .line 606
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 607
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 608
    .local v10, "uri":Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v9, "intent":Landroid/content/Intent;
    const-string v0, "text/x-vcard"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 610
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v9, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 613
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Lcom/android/contacts/ContactsUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v6

    .line 614
    .local v6, "chooseIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v6    # "chooseIntent":Landroid/content/Intent;
    .end local v8    # "index":I
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "uri":Landroid/net/Uri;
    .end local v11    # "uriListBuilder":Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 619
    :cond_4
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v12, "uris":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/net/Uri;>;"
    if-eqz v7, :cond_0

    .line 623
    :cond_5
    :try_start_1
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 624
    .restart local v10    # "uri":Landroid/net/Uri;
    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 626
    new-instance v9, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND_MULTIPLE"

    invoke-direct {v9, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    .restart local v9    # "intent":Landroid/content/Intent;
    const-string v0, "text/x-vcard"

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    const-string v0, "android.intent.extra.STREAM"

    invoke-virtual {v9, v0, v12}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 631
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v9, v1}, Lcom/android/contacts/ContactsUtils;->createChooserIntent(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/Intent;

    move-result-object v6

    .line 632
    .restart local v6    # "chooseIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 634
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .end local v6    # "chooseIntent":Landroid/content/Intent;
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v10    # "uri":Landroid/net/Uri;
    :catchall_1
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static show(Landroid/app/FragmentManager;I)V
    .locals 3
    .param p0, "fragmentManager"    # Landroid/app/FragmentManager;
    .param p1, "contactsCount"    # I

    .prologue
    .line 125
    sput p1, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mContactsCount:I

    .line 126
    new-instance v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;

    invoke-direct {v1}, Lcom/android/contacts/interactions/ImportExportDialogFragment;-><init>()V

    .line 129
    .local v1, "fragment":Lcom/android/contacts/interactions/ImportExportDialogFragment;
    :try_start_0
    const-string v2, "ImportExportDialogFragment"

    invoke-virtual {v1, p0, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 132
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public getImportPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 796
    iget-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mImportPath:Ljava/lang/String;

    return-object v0
.end method

.method public onAccountChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    .line 732
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "resourceId"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1, p1}, Lcom/android/contacts/util/AccountSelectionUtil;->doImport(Landroid/content/Context;ILcom/android/contacts/model/AccountWithDataSet;)V

    .line 736
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 737
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 742
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 743
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 119
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mPreferences:Lcom/android/contacts/preference/ContactsPreferences;

    .line 121
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const v13, 0x7f0e00d1

    const v12, 0x7f0a000d

    const v11, 0x7f0a000a

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 140
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 141
    .local v5, "mContext":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 142
    .local v6, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const-string v10, "layout_inflater"

    invoke-virtual {v9, v10}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 144
    .local v3, "dialogInflater":Landroid/view/LayoutInflater;
    if-eqz p1, :cond_0

    .line 145
    const-string v9, "ContactsCount"

    invoke-virtual {p1, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    sput v9, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mContactsCount:I

    .line 148
    :cond_0
    new-instance v1, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    const v10, 0x7f0401e3

    invoke-direct {v1, p0, v9, v10, v3}, Lcom/android/contacts/interactions/ImportExportDialogFragment$2;-><init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/content/Context;ILandroid/view/LayoutInflater;)V

    .line 202
    .local v1, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/sec/android/app/contacts/util/ContactsUtil;->isKnoxMode(Landroid/content/Context;)Z

    move-result v4

    .line 204
    .local v4, "isKnoxMode":Z
    invoke-direct {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->checkStorageState()V

    .line 205
    invoke-virtual {v5}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "airplane_mode_on"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-eqz v9, :cond_1

    move v7, v8

    :cond_1
    iput-boolean v7, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->isAirplaneMode:Z

    .line 207
    sget-boolean v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mSdCardMounted:Z

    if-eqz v7, :cond_3

    .line 208
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 209
    const v7, 0x7f0e02bd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 211
    :cond_2
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 212
    const v7, 0x7f0e02bb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 215
    :cond_3
    if-nez v4, :cond_8

    .line 216
    sget-boolean v7, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mExternalSdCardMounted:Z

    if-eqz v7, :cond_5

    .line 217
    invoke-virtual {v6, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 218
    const v7, 0x7f0e02be

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 220
    :cond_4
    invoke-virtual {v6, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 221
    const v7, 0x7f0e02bc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 226
    :cond_5
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Contact_EnableAAB"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 240
    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Contact_DisableSIMContacts"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    iget-boolean v7, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->isAirplaneMode:Z

    if-nez v7, :cond_7

    .line 255
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Contact_ReplaceLabelDualModeSim"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isUIMCard()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 260
    const v7, 0x7f0e00d2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 261
    const v7, 0x7f0e02c9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 309
    :cond_7
    :goto_0
    invoke-static {}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getInstance()Lcom/android/contacts/util/LoadCscFeatureUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/contacts/util/LoadCscFeatureUtils;->getEnableDualStandbyContactsForCG()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 310
    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    const-string v9, "vnd.sec.contact.sim2"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {v5}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->getInstance(Landroid/content/Context;)Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;

    move-result-object v7

    const-string v9, "vnd.sec.contact.sim2"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/contacts/sim/PhoneBookManageSim;->isSimDBReady(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-boolean v7, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->isAirplaneMode:Z

    if-nez v7, :cond_8

    .line 316
    const v7, 0x7f0e03f7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 317
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Contact_DisableMenuSimExportImport"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 321
    const v7, 0x7f0e03f8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 332
    :cond_8
    new-instance v2, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/interactions/ImportExportDialogFragment$3;-><init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;Landroid/widget/ArrayAdapter;)V

    .line 518
    .local v2, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v9, 0x7f0e0115

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const/4 v9, -0x1

    invoke-virtual {v7, v1, v9, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v9, Lcom/android/contacts/interactions/ImportExportDialogFragment$4;

    invoke-direct {v9, p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment$4;-><init>(Lcom/android/contacts/interactions/ImportExportDialogFragment;)V

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 532
    .local v0, "ImportExportDialog":Landroid/app/AlertDialog;
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 534
    return-object v0

    .line 295
    .end local v0    # "ImportExportDialog":Landroid/app/AlertDialog;
    .end local v2    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    :cond_9
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Contact_DisableMenuSimExport"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 299
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 300
    :cond_a
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v7

    const-string v9, "CscFeature_Contact_DisableMenuSimExportImport"

    invoke-virtual {v7, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 304
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 305
    const v7, 0x7f0e02c8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 540
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 541
    const-string v0, "ContactsCount"

    sget v1, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mContactsCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 542
    return-void
.end method

.method public onSimChosen(Lcom/android/contacts/model/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "account"    # Lcom/android/contacts/model/AccountWithDataSet;
    .param p2, "extraArgs"    # Landroid/os/Bundle;

    .prologue
    const v7, 0x7f0e0296

    .line 873
    const-string v5, "resourceId"

    invoke-virtual {p2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const v6, 0x7f0e00d1

    if-ne v5, v6, :cond_1

    .line 874
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    .line 875
    .local v1, "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    invoke-virtual {v1}, Lcom/android/contacts/model/AccountTypeManager;->getWritableAccountsWithoutSim()Ljava/util/List;

    move-result-object v0

    .line 877
    .local v0, "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 884
    .local v4, "size":I
    const-string v5, "vnd.sec.contact.sim2"

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 887
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 888
    .local v2, "args":Landroid/os/Bundle;
    const-string v5, "resourceId"

    const-string v6, "resourceId"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 889
    const-string v5, "importSIMID"

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 890
    const-string v5, "importPath"

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getImportPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    sget-object v6, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v5, p0, v7, v6, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 927
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v1    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v4    # "size":I
    :goto_0
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 928
    return-void

    .line 902
    .restart local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .restart local v1    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .restart local v4    # "size":I
    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 903
    .restart local v2    # "args":Landroid/os/Bundle;
    const-string v5, "resourceId"

    const-string v6, "resourceId"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 904
    const-string v5, "importSIMID"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 905
    const-string v5, "importPath"

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getImportPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    sget-object v6, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_CONTACT_WRITABLE_WITHOUT_SIM:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v5, p0, v7, v6, v2}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0

    .line 917
    .end local v0    # "accountList":Ljava/util/List;, "Ljava/util/List<Lcom/android/contacts/model/AccountWithDataSet;>;"
    .end local v1    # "accountTypes":Lcom/android/contacts/model/AccountTypeManager;
    .end local v2    # "args":Landroid/os/Bundle;
    .end local v4    # "size":I
    :cond_1
    const/4 v3, 0x0

    .line 918
    .local v3, "intentCopy":Landroid/content/Intent;
    const-string v5, "vnd.sec.contact.sim2"

    iget-object v6, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 919
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intentCopy":Landroid/content/Intent;
    const-string v5, "intent.action.EXPORT_SIM2_CONTACT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 923
    .restart local v3    # "intentCopy":Landroid/content/Intent;
    :goto_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const-class v6, Lcom/sec/android/app/contacts/activities/SIMContactSelectionActivity;

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 924
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 921
    :cond_2
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intentCopy":Landroid/content/Intent;
    const-string v5, "intent.action.EXPORT_SIM_CONTACT"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v3    # "intentCopy":Landroid/content/Intent;
    goto :goto_1
.end method

.method public onSimSelectorCancelled()V
    .locals 0

    .prologue
    .line 933
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 934
    return-void
.end method

.method selectSimForDS(I)Z
    .locals 5
    .param p1, "resId"    # I

    .prologue
    const v3, 0x7f0e00d1

    const/4 v4, 0x1

    .line 843
    if-ne p1, v3, :cond_0

    .line 844
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 845
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "resourceId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 846
    const-string v1, "importPath"

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getImportPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SIM1_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v1, p0, v3, v2, v0}, Lcom/android/contacts/editor/SelectSimDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 851
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    .line 863
    :goto_0
    return v4

    .line 855
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 856
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v1, "resourceId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 857
    const-string v1, "importPath"

    invoke-virtual {p0}, Lcom/android/contacts/interactions/ImportExportDialogFragment;->getImportPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0e02c8

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_SIM1_SIM2:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    invoke-static {v1, p0, v2, v3, v0}, Lcom/android/contacts/editor/SelectSimDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    .line 862
    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    goto :goto_0
.end method

.method public setImportPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 800
    iput-object p1, p0, Lcom/android/contacts/interactions/ImportExportDialogFragment;->mImportPath:Ljava/lang/String;

    .line 801
    return-void
.end method
