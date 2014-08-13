.class Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardScanThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    }
.end annotation


# instance fields
.field private mCanceled:Z

.field private mCheckedPaths:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGotIOException:Z

.field private mRootDirectory:Ljava/io/File;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/io/File;)V
    .locals 3
    .param p2, "sdcardDirectory"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 1373
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1375
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 1377
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    .line 1379
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    .line 1381
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    .line 1383
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1387
    .local v0, "powerManager":Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "VCardImport"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1393
    return-void
.end method

.method private getVCardFileRecursively(Ljava/io/File;)V
    .locals 17
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1483
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v14, :cond_0

    .line 1485
    new-instance v14, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    throw v14

    .line 1497
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1519
    .local v9, "files":[Ljava/io/File;
    :goto_0
    if-nez v9, :cond_2

    .line 1521
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v4

    .line 1523
    .local v4, "currentDirectoryPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".android_secure"

    invoke-virtual {v14, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1527
    .local v12, "secureDirectoryPath":Ljava/lang/String;
    invoke-static {v4, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 1529
    const-string v14, "VCardImport"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "listFiles() returned null (directory: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ")"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    .end local v4    # "currentDirectoryPath":Ljava/lang/String;
    .end local v12    # "secureDirectoryPath":Ljava/lang/String;
    :cond_1
    return-void

    .line 1499
    .end local v9    # "files":[Ljava/io/File;
    :catch_0
    move-exception v5

    .line 1501
    .local v5, "e":Ljava/lang/StackOverflowError;
    const-string v14, "VCardImport"

    const-string v15, "StackOverflowError when calling listFiles()"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :try_start_1
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    .line 1515
    :goto_1
    const/4 v9, 0x0

    .restart local v9    # "files":[Ljava/io/File;
    goto :goto_0

    .line 1507
    .end local v9    # "files":[Ljava/io/File;
    :catch_1
    move-exception v6

    .line 1511
    .local v6, "e2":Ljava/lang/StackOverflowError;
    const-string v14, "VCardImport"

    const-string v15, "StackOverflowError when calling printStackTrace()"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1537
    .end local v5    # "e":Ljava/lang/StackOverflowError;
    .end local v6    # "e2":Ljava/lang/StackOverflowError;
    .restart local v9    # "files":[Ljava/io/File;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .local v2, "arr$":[Ljava/io/File;
    array-length v11, v2

    .local v11, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_2
    if-ge v10, v11, :cond_1

    aget-object v7, v2, v10

    .line 1539
    .local v7, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v14, :cond_3

    .line 1541
    new-instance v14, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;Lcom/android/contacts/vcard/ImportVCardActivity$1;)V

    throw v14

    .line 1545
    :cond_3
    invoke-virtual {v7}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 1547
    .local v3, "canonicalPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v14, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 1537
    :cond_4
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1555
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v14, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1559
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1561
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V

    goto :goto_3

    .line 1563
    :cond_6
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v14

    const-string v15, ".vcf"

    invoke-virtual {v14, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1567
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1569
    .local v8, "fileName":Ljava/lang/String;
    invoke-static {v8}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1570
    .local v1, "EncodeFileName":Ljava/lang/String;
    invoke-virtual {v3, v8, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1572
    new-instance v13, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v14

    invoke-direct {v13, v8, v3, v14, v15}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 1576
    .local v13, "vcardFile":Lcom/android/contacts/vcard/ImportVCardActivity$VCardFile;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v14}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1588
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 1590
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 1596
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 1598
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    .line 1602
    :cond_0
    return-void
.end method

.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1401
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    # setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3, v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$702(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 1405
    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1407
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mImportPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1000(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1429
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1435
    :goto_0
    iget-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v3, :cond_0

    .line 1437
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3, v8}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$702(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/util/List;)Ljava/util/List;

    .line 1443
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;
    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1100(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 1445
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;
    invoke-static {v3, v8}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1102(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1449
    iget-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z

    if-eqz v3, :cond_1

    .line 1451
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v4, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v6, 0x7f09000c

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1475
    :goto_1
    return-void

    .line 1409
    :catch_0
    move-exception v1

    .line 1411
    .local v1, "e":Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1429
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1413
    .end local v1    # "e":Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread$CanceledException;
    :catch_1
    move-exception v1

    .line 1415
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mGotIOException:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1429
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1417
    .end local v1    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 1419
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_3
    const-string v3, "VCardImport"

    const-string v4, "OutOfMemoryError occured during caching vCard"

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1421
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 1423
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v4, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    iget-object v6, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v7, 0x7f0e00dc

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1429
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v3

    .line 1453
    :cond_1
    iget-boolean v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->mCanceled:Z

    if-eqz v3, :cond_2

    .line 1455
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 1459
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$700(Lcom/android/contacts/vcard/ImportVCardActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1461
    .local v2, "size":I
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    .line 1463
    .local v0, "context":Landroid/content/Context;
    if-nez v2, :cond_3

    .line 1465
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v4, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    iget-object v5, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v6, 0x7f090007

    invoke-direct {v4, v5, v6}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;I)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 1469
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # invokes: Lcom/android/contacts/vcard/ImportVCardActivity;->startVCardSelectAndImport()V
    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$1200(Lcom/android/contacts/vcard/ImportVCardActivity;)V

    goto :goto_1
.end method
