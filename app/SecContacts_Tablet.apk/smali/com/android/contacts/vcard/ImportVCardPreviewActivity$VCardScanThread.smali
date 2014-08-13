.class Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;
.super Ljava/lang/Thread;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardScanThread"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread$CanceledException;
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

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Ljava/io/File;)V
    .locals 3
    .param p2, "sdcardDirectory"    # Ljava/io/File;

    .prologue
    const/4 v1, 0x0

    .line 608
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 609
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mCanceled:Z

    .line 610
    iput-boolean v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mGotIOException:Z

    .line 611
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    .line 612
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    .line 613
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 615
    .local v0, "powerManager":Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "VCardImportPreview"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 618
    return-void
.end method

.method private getVCardFileRecursively(Ljava/io/File;)V
    .locals 16
    .param p1, "directory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread$CanceledException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 657
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mCanceled:Z

    if-eqz v13, :cond_0

    .line 658
    new-instance v13, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread$CanceledException;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;)V

    throw v13

    .line 664
    :cond_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 675
    .local v8, "files":[Ljava/io/File;
    :goto_0
    if-nez v8, :cond_2

    .line 676
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v3

    .line 677
    .local v3, "currentDirectoryPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mRootDirectory:Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".android_secure"

    invoke-virtual {v13, v14}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 679
    .local v11, "secureDirectoryPath":Ljava/lang/String;
    invoke-static {v3, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_1

    .line 680
    const-string v13, "VCardImportPreview"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "listFiles() returned null (directory: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    .end local v3    # "currentDirectoryPath":Ljava/lang/String;
    .end local v11    # "secureDirectoryPath":Ljava/lang/String;
    :cond_1
    return-void

    .line 665
    .end local v8    # "files":[Ljava/io/File;
    :catch_0
    move-exception v4

    .line 666
    .local v4, "e":Ljava/lang/StackOverflowError;
    const-string v13, "VCardImportPreview"

    const-string v14, "StackOverflowError when calling listFiles()"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_1

    .line 673
    :goto_1
    const/4 v8, 0x0

    .restart local v8    # "files":[Ljava/io/File;
    goto :goto_0

    .line 669
    .end local v8    # "files":[Ljava/io/File;
    :catch_1
    move-exception v5

    .line 671
    .local v5, "e2":Ljava/lang/StackOverflowError;
    const-string v13, "VCardImportPreview"

    const-string v14, "StackOverflowError when calling printStackTrace()"

    invoke-static {v13, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 684
    .end local v4    # "e":Ljava/lang/StackOverflowError;
    .end local v5    # "e2":Ljava/lang/StackOverflowError;
    .restart local v8    # "files":[Ljava/io/File;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .local v1, "arr$":[Ljava/io/File;
    array-length v10, v1

    .local v10, "len$":I
    const/4 v9, 0x0

    .local v9, "i$":I
    :goto_2
    if-ge v9, v10, :cond_1

    aget-object v6, v1, v9

    .line 685
    .local v6, "file":Ljava/io/File;
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mCanceled:Z

    if-eqz v13, :cond_3

    .line 686
    new-instance v13, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread$CanceledException;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread$CanceledException;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;Lcom/android/contacts/vcard/ImportVCardPreviewActivity$1;)V

    throw v13

    .line 688
    :cond_3
    invoke-virtual {v6}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v2

    .line 689
    .local v2, "canonicalPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v13, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 684
    :cond_4
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 693
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mCheckedPaths:Ljava/util/Set;

    invoke-interface {v13, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 695
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 696
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V

    goto :goto_3

    .line 697
    :cond_6
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v14, ".vcf"

    invoke-virtual {v13, v14}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 699
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    .line 700
    .local v7, "fileName":Ljava/lang/String;
    new-instance v12, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;

    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    move-result-wide v13

    invoke-direct {v12, v7, v2, v13, v14}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 702
    .local v12, "vcardFile":Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardFile;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v13}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$600(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 708
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mCanceled:Z

    .line 709
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 712
    const/4 v0, -0x2

    if-ne p2, v0, :cond_0

    .line 713
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mCanceled:Z

    .line 715
    :cond_0
    return-void
.end method

.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 622
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    # setter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v2, v3}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$602(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Ljava/util/List;)Ljava/util/List;

    .line 624
    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 625
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mImportPath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$700(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->getVCardFileRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread$CanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 634
    :goto_0
    iget-boolean v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mCanceled:Z

    if-eqz v2, :cond_0

    .line 635
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # setter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v2, v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$602(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Ljava/util/List;)Ljava/util/List;

    .line 638
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;
    invoke-static {v2}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$800(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 639
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # setter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForScanVCard:Landroid/app/ProgressDialog;
    invoke-static {v2, v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$802(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 641
    iget-boolean v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mGotIOException:Z

    if-eqz v2, :cond_1

    .line 642
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    new-instance v3, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const v5, 0x7f09000c

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 653
    :goto_1
    return-void

    .line 626
    :catch_0
    move-exception v0

    .line 627
    .local v0, "e":Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread$CanceledException;
    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mCanceled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 628
    .end local v0    # "e":Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread$CanceledException;
    :catch_1
    move-exception v0

    .line 629
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mGotIOException:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 631
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v2

    .line 643
    :cond_1
    iget-boolean v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->mCanceled:Z

    if-eqz v2, :cond_2

    .line 644
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 646
    :cond_2
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAllVCardFileList:Ljava/util/List;
    invoke-static {v2}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$600(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 647
    .local v1, "size":I
    if-nez v1, :cond_3

    .line 648
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    new-instance v3, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;

    iget-object v4, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const v5, 0x7f090007

    invoke-direct {v3, v4, v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 650
    :cond_3
    iget-object v2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardScanThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # invokes: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->startVCardSelectAndImport()V
    invoke-static {v2}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$900(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)V

    goto :goto_1
.end method
