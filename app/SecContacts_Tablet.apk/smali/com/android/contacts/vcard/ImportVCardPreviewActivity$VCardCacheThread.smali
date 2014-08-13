.class Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;
.super Ljava/lang/Thread;
.source "ImportVCardPreviewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VCardCacheThread"
.end annotation


# instance fields
.field private mCanceled:Z

.field private final mDisplayName:Ljava/lang/String;

.field private final mSource:[B

.field private final mSourceUris:[Landroid/net/Uri;

.field private mVCardParser:Lcom/android/vcard/VCardParser;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;[Landroid/net/Uri;)V
    .locals 4
    .param p1, "context"    # Lcom/android/contacts/vcard/ImportVCardPreviewActivity;
    .param p2, "sourceUris"    # [Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 265
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 266
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    .line 267
    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mSource:[B

    .line 269
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 271
    .local v0, "powerManager":Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "VCardImportPreview"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 274
    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    .line 275
    return-void
.end method

.method private constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/vcard/ImportRequest;
    .locals 22
    .param p1, "data"    # [B
    .param p2, "localDataUri"    # Landroid/net/Uri;
    .param p3, "displayName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/android/vcard/exception/VCardException;
        }
    .end annotation

    .prologue
    .line 495
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v2}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 496
    .local v20, "resolver":Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 497
    .local v11, "counter":Lcom/android/vcard/VCardEntryCounter;
    const/4 v13, 0x0

    .line 498
    .local v13, "detector":Lcom/android/vcard/VCardSourceDetector;
    const/4 v9, 0x1

    .line 500
    .local v9, "vcardVersion":I
    const/16 v21, 0x0

    .line 502
    .local v21, "shouldUseV30":Z
    if-eqz p1, :cond_1

    .line 503
    :try_start_0
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v18, "is":Ljava/io/InputStream;
    move-object/from16 v19, v18

    .line 509
    .end local v18    # "is":Ljava/io/InputStream;
    .local v19, "is":Ljava/io/InputStream;
    :goto_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableExceptionHandling4Corea"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "characterset"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 511
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    const/high16 v3, -0x3bf00000

    const-string v4, "EUC-KR"

    invoke-direct {v2, v3, v4}, Lcom/android/vcard/VCardParser_V21;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 517
    :goto_1
    :try_start_1
    new-instance v12, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v12}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 518
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v12, "counter":Lcom/android/vcard/VCardEntryCounter;
    :try_start_2
    new-instance v14, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v14}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 519
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .local v14, "detector":Lcom/android/vcard/VCardSourceDetector;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v12}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v14}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 521
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 553
    if-eqz v19, :cond_7

    .line 555
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_4 .. :try_end_4} :catch_7

    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 561
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    :cond_0
    :goto_2
    if-eqz v21, :cond_6

    const/4 v9, 0x2

    .line 567
    .end local v18    # "is":Ljava/io/InputStream;
    :goto_3
    new-instance v2, Lcom/android/contacts/vcard/ImportRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;
    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$500(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/model/AccountWithDataSet;

    move-result-object v3

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedType()I

    move-result v7

    invoke-virtual {v13}, Lcom/android/vcard/VCardSourceDetector;->getEstimatedCharset()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11}, Lcom/android/vcard/VCardEntryCounter;->getCount()I

    move-result v10

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v2 .. v10}, Lcom/android/contacts/vcard/ImportRequest;-><init>(Landroid/accounts/Account;[BLandroid/net/Uri;Ljava/lang/String;ILjava/lang/String;II)V

    return-object v2

    .line 505
    :cond_1
    :try_start_5
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v18

    .restart local v18    # "is":Ljava/io/InputStream;
    move-object/from16 v19, v18

    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v19    # "is":Ljava/io/InputStream;
    goto :goto_0

    .line 513
    :cond_2
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 562
    .end local v19    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v15

    .line 563
    .local v15, "e":Lcom/android/vcard/exception/VCardNestedException;
    :goto_4
    const-string v2, "VCardImportPreview"

    const-string v3, "Nested Exception is found (it may be false-positive)."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 556
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v15    # "e":Lcom/android/vcard/exception/VCardNestedException;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v19    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 557
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_2

    .line 522
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v19    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v16

    move-object v14, v13

    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v12, v11

    .line 524
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v16, "e1":Lcom/android/vcard/exception/VCardVersionException;
    :goto_5
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 528
    :goto_6
    const/16 v21, 0x1

    .line 529
    if-eqz p1, :cond_3

    .line 530
    :try_start_7
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 536
    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    :goto_7
    :try_start_8
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v2

    const-string v3, "CscFeature_Contact_EnableExceptionHandling4Corea"

    invoke-virtual {v2, v3}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "characterset"

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 538
    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    const/high16 v3, -0x3bf00000

    const-string v4, "EUC-KR"

    invoke-direct {v2, v3, v4}, Lcom/android/vcard/VCardParser_V30;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 544
    :goto_8
    :try_start_9
    new-instance v11, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v11}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_9
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 545
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    :try_start_a
    new-instance v13, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v13}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_a
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 546
    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v11}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v13}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_b
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 553
    if-eqz v18, :cond_0

    .line 555
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_2

    .line 556
    :catch_3
    move-exception v2

    goto/16 :goto_2

    .line 532
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v19    # "is":Ljava/io/InputStream;
    :cond_3
    :try_start_d
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-result-object v18

    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    goto :goto_7

    .line 540
    :cond_4
    :try_start_e
    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_8

    .line 553
    :catchall_0
    move-exception v2

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    :goto_9
    if-eqz v18, :cond_5

    .line 555
    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_f .. :try_end_f} :catch_0

    .line 557
    :cond_5
    :goto_a
    :try_start_10
    throw v2
    :try_end_10
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_10 .. :try_end_10} :catch_0

    .line 549
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    :catch_4
    move-exception v17

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .line 550
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v17, "e2":Lcom/android/vcard/exception/VCardVersionException;
    :goto_b
    :try_start_11
    new-instance v2, Lcom/android/vcard/exception/VCardException;

    const-string v3, "vCard with unspported version."

    invoke-direct {v2, v3}, Lcom/android/vcard/exception/VCardException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 553
    .end local v17    # "e2":Lcom/android/vcard/exception/VCardVersionException;
    :catchall_1
    move-exception v2

    goto :goto_9

    .line 561
    .end local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 525
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .restart local v19    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v2

    goto/16 :goto_6

    .line 556
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v18    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v3

    goto :goto_a

    .line 562
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v19    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v15

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto/16 :goto_4

    .line 553
    :catchall_2
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    goto :goto_9

    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v19    # "is":Ljava/io/InputStream;
    :catchall_3
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_9

    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v19    # "is":Ljava/io/InputStream;
    :catchall_4
    move-exception v2

    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_9

    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    :catchall_5
    move-exception v2

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto :goto_9

    .line 549
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :catch_8
    move-exception v17

    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto :goto_b

    :catch_9
    move-exception v17

    goto :goto_b

    .line 522
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .end local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v19    # "is":Ljava/io/InputStream;
    :catch_a
    move-exception v16

    move-object v14, v13

    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    goto/16 :goto_5

    :catch_b
    move-exception v16

    goto/16 :goto_5

    :cond_7
    move-object/from16 v18, v19

    .end local v19    # "is":Ljava/io/InputStream;
    .restart local v18    # "is":Ljava/io/InputStream;
    move-object v13, v14

    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v11, v12

    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto/16 :goto_2
.end method

.method private copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 11
    .param p1, "sourceUri"    # Landroid/net/Uri;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 438
    const-string v7, "VCardImportPreview"

    const-string v8, "Copy a Uri to app local storage (%s -> %s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    .line 441
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 442
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 443
    .local v4, "inputChannel":Ljava/nio/channels/ReadableByteChannel;
    const/4 v5, 0x0

    .line 444
    .local v5, "outputChannel":Ljava/nio/channels/WritableByteChannel;
    const/4 v2, 0x0

    .line 446
    .local v2, "destUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v4

    .line 447
    invoke-virtual {v1, p2}, Landroid/content/ContextWrapper;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 448
    const/4 v7, 0x0

    invoke-virtual {v1, p2, v7}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 449
    const/16 v7, 0x2000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 450
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-interface {v4, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 451
    iget-boolean v7, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v7, :cond_2

    .line 452
    const-string v7, "VCardImportPreview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Canceled during caching "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    const/4 v2, 0x0

    .line 464
    .end local v2    # "destUri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 466
    :try_start_1
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 471
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 473
    :try_start_2
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 479
    :cond_1
    :goto_2
    return-object v2

    .line 467
    :catch_0
    move-exception v3

    .line 468
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "VCardImportPreview"

    const-string v8, "Failed to close inputChannel."

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 474
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 475
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "VCardImportPreview"

    const-string v8, "Failed to close outputChannel"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 455
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "destUri":Landroid/net/Uri;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 456
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 457
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 464
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_3

    .line 466
    :try_start_4
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 471
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 473
    :try_start_5
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 476
    :cond_4
    :goto_4
    throw v7

    .line 459
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 460
    :goto_5
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 461
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 464
    :cond_6
    if-eqz v4, :cond_7

    .line 466
    :try_start_7
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 471
    :cond_7
    :goto_6
    if-eqz v5, :cond_1

    .line 473
    :try_start_8
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 474
    :catch_2
    move-exception v3

    .line 475
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "VCardImportPreview"

    const-string v8, "Failed to close outputChannel"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 467
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 468
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "VCardImportPreview"

    const-string v8, "Failed to close inputChannel."

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 467
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 468
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "VCardImportPreview"

    const-string v9, "Failed to close inputChannel."

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 474
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 475
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "VCardImportPreview"

    const-string v9, "Failed to close outputChannel"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 579
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mCanceled:Z

    .line 580
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 583
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const-string v0, "VCardImportPreview"

    const-string v1, "WakeLock is being held."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 283
    :cond_0
    return-void
.end method

.method public getSourceUris()[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 587
    const-string v0, "VCardImportPreview"

    const-string v1, "Cancel request has come. Abort caching vCard."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->cancel()V

    .line 589
    return-void
.end method

.method public run()V
    .locals 24

    .prologue
    .line 287
    const-string v4, "VCardImportPreview"

    const-string v5, "vCard cache thread starts running."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    move-result-object v4

    if-nez v4, :cond_0

    .line 289
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "vCard cache thread must be launched after a service connection is established"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 293
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 295
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mCanceled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 296
    const-string v4, "VCardImportPreview"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    const-string v4, "VCardImportPreview"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 424
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 428
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 432
    :goto_1
    return-void

    .line 425
    :catch_0
    move-exception v14

    .line 426
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImportPreview"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 300
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    .line 309
    .local v10, "context":Landroid/content/Context;
    const/4 v9, 0x0

    .line 310
    .local v9, "cache_index":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 311
    .local v22, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mSource:[B
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    .line 313
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mSource:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/vcard/ImportRequest;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 406
    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 407
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;->sendImportRequest(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 421
    :goto_3
    const-string v4, "VCardImportPreview"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 424
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_b

    .line 428
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 314
    :catch_1
    move-exception v14

    .line 315
    .local v14, "e":Lcom/android/vcard/exception/VCardException;
    :try_start_6
    const-string v4, "VCardImportPreview"

    const-string v5, "Maybe the file is in wrong format"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 316
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const v5, 0x7f0e00dd

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->showFailureNotification(I)V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 421
    const-string v4, "VCardImportPreview"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 424
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    .line 428
    .end local v14    # "e":Lcom/android/vcard/exception/VCardException;
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 425
    .restart local v14    # "e":Lcom/android/vcard/exception/VCardException;
    :catch_2
    move-exception v14

    .line 426
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImportPreview"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 320
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v4}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 322
    .local v2, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    .local v8, "arr$":[Landroid/net/Uri;
    array-length v0, v8

    move/from16 v19, v0

    .local v19, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_6
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget-object v3, v8, v17

    .line 323
    .local v3, "sourceUri":Landroid/net/Uri;
    const/16 v16, 0x0

    .line 326
    .local v16, "filename":Ljava/lang/String;
    :goto_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "import_tmp_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".vcf"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 327
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/ContextWrapper;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 328
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 337
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 338
    .local v20, "localDataUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v4, :cond_6

    .line 339
    const-string v4, "VCardImportPreview"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 411
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v8    # "arr$":[Landroid/net/Uri;
    .end local v9    # "cache_index":I
    .end local v10    # "context":Landroid/content/Context;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v19    # "len$":I
    .end local v20    # "localDataUri":Landroid/net/Uri;
    .end local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :catch_3
    move-exception v14

    .line 412
    .local v14, "e":Ljava/lang/OutOfMemoryError;
    :try_start_9
    const-string v4, "VCardImportPreview"

    const-string v5, "OutOfMemoryError occured during caching vCard"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 414
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    new-instance v5, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const v23, 0x7f0e00dc

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 421
    const-string v4, "VCardImportPreview"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 424
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_c

    .line 428
    .end local v14    # "e":Ljava/lang/OutOfMemoryError;
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 331
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "sourceUri":Landroid/net/Uri;
    .restart local v8    # "arr$":[Landroid/net/Uri;
    .restart local v9    # "cache_index":I
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v19    # "len$":I
    .restart local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :cond_4
    const v4, 0x7fffffff

    if-ne v9, v4, :cond_5

    .line 332
    :try_start_b
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exceeded cache limit"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 416
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v8    # "arr$":[Landroid/net/Uri;
    .end local v9    # "cache_index":I
    .end local v10    # "context":Landroid/content/Context;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v19    # "len$":I
    .end local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :catch_4
    move-exception v14

    .line 417
    .local v14, "e":Ljava/io/IOException;
    :try_start_c
    const-string v4, "VCardImportPreview"

    const-string v5, "IOException during caching vCard"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    new-instance v5, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const v23, 0x7f0e00db

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 421
    const-string v4, "VCardImportPreview"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 424
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_d

    .line 428
    .end local v14    # "e":Ljava/io/IOException;
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 334
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "sourceUri":Landroid/net/Uri;
    .restart local v8    # "arr$":[Landroid/net/Uri;
    .restart local v9    # "cache_index":I
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v19    # "len$":I
    .restart local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 336
    goto/16 :goto_7

    .line 342
    .restart local v20    # "localDataUri":Landroid/net/Uri;
    :cond_6
    if-nez v20, :cond_7

    .line 343
    :try_start_e
    const-string v4, "VCardImportPreview"

    const-string v5, "destUri is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    .line 421
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v8    # "arr$":[Landroid/net/Uri;
    .end local v9    # "cache_index":I
    .end local v10    # "context":Landroid/content/Context;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v19    # "len$":I
    .end local v20    # "localDataUri":Landroid/net/Uri;
    .end local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :catchall_0
    move-exception v4

    const-string v5, "VCardImportPreview"

    const-string v6, "Finished caching vCard."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 424
    :try_start_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
    invoke-static {v6}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_e

    .line 428
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 429
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const/4 v6, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v5, v6}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 430
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    throw v4

    .line 347
    .restart local v2    # "resolver":Landroid/content/ContentResolver;
    .restart local v3    # "sourceUri":Landroid/net/Uri;
    .restart local v8    # "arr$":[Landroid/net/Uri;
    .restart local v9    # "cache_index":I
    .restart local v10    # "context":Landroid/content/Context;
    .restart local v15    # "file":Ljava/io/File;
    .restart local v16    # "filename":Ljava/lang/String;
    .restart local v17    # "i$":I
    .restart local v19    # "len$":I
    .restart local v20    # "localDataUri":Landroid/net/Uri;
    .restart local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    :cond_7
    const/4 v12, 0x0

    .line 348
    .local v12, "displayName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 352
    .local v11, "cursor":Landroid/database/Cursor;
    const/4 v4, 0x1

    :try_start_10
    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_display_name"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 355
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 356
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 357
    const-string v4, "VCardImportPreview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected multiple rows: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    :cond_8
    const-string v4, "_display_name"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 361
    .local v18, "index":I
    if-ltz v18, :cond_9

    .line 362
    invoke-virtual {v3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    const-string v5, "mms"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/part/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    move-result v4

    if-eqz v4, :cond_e

    .line 364
    :try_start_11
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 365
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-result-object v12

    .line 379
    .end local v18    # "index":I
    :cond_9
    :goto_b
    if-eqz v11, :cond_a

    .line 380
    :try_start_12
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 383
    :cond_a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 384
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object v12

    .line 389
    :cond_b
    const/4 v4, 0x0

    :try_start_13
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1, v12}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/vcard/ImportRequest;
    :try_end_13
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v21

    .line 399
    .local v21, "request":Lcom/android/contacts/vcard/ImportRequest;
    :try_start_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v4, :cond_f

    .line 400
    const-string v4, "VCardImportPreview"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 421
    const-string v4, "VCardImportPreview"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 424
    :try_start_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_a

    .line 428
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 367
    .end local v21    # "request":Lcom/android/contacts/vcard/ImportRequest;
    .restart local v18    # "index":I
    :cond_c
    :try_start_16
    new-instance v13, Ljava/lang/String;

    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "iso-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v13, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_16
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_16 .. :try_end_16} :catch_5
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    .end local v12    # "displayName":Ljava/lang/String;
    .local v13, "displayName":Ljava/lang/String;
    move-object v12, v13

    .end local v13    # "displayName":Ljava/lang/String;
    .restart local v12    # "displayName":Ljava/lang/String;
    goto :goto_b

    .line 370
    :catch_5
    move-exception v14

    .line 371
    .local v14, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_17
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto :goto_b

    .line 379
    .end local v14    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v18    # "index":I
    :catchall_1
    move-exception v4

    if-eqz v11, :cond_d

    .line 380
    :try_start_18
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v4
    :try_end_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 374
    .restart local v18    # "index":I
    :cond_e
    :try_start_19
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    move-result-object v12

    goto/16 :goto_b

    .line 390
    .end local v18    # "index":I
    :catch_6
    move-exception v14

    .line 391
    .local v14, "e":Lcom/android/vcard/exception/VCardException;
    :try_start_1a
    const-string v4, "VCardImportPreview"

    const-string v5, "Maybe the file is in wrong format"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 392
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const v5, 0x7f0e00dd

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->showFailureNotification(I)V
    :try_end_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 421
    const-string v4, "VCardImportPreview"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 424
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_7

    .line 428
    .end local v14    # "e":Lcom/android/vcard/exception/VCardException;
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 425
    .restart local v14    # "e":Lcom/android/vcard/exception/VCardException;
    :catch_7
    move-exception v14

    .line 426
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImportPreview"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 394
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v14

    .line 395
    .local v14, "e":Ljava/io/IOException;
    :try_start_1c
    const-string v4, "VCardImportPreview"

    const-string v5, "Unexpected IOException"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const v5, 0x7f0e00db

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->showFailureNotification(I)V
    :try_end_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_1c} :catch_3
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 421
    const-string v4, "VCardImportPreview"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 424
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Lcom/android/contacts/vcard/ImportVCardPreviewActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_9

    .line 428
    .end local v14    # "e":Ljava/io/IOException;
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardPreviewActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardPreviewActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 430
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardPreviewActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardPreviewActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 425
    .restart local v14    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v14

    .line 426
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImportPreview"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 425
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v21    # "request":Lcom/android/contacts/vcard/ImportRequest;
    :catch_a
    move-exception v14

    .line 426
    .restart local v14    # "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImportPreview"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 403
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :cond_f
    :try_start_1e
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    .line 409
    .end local v2    # "resolver":Landroid/content/ContentResolver;
    .end local v3    # "sourceUri":Landroid/net/Uri;
    .end local v8    # "arr$":[Landroid/net/Uri;
    .end local v11    # "cursor":Landroid/database/Cursor;
    .end local v12    # "displayName":Ljava/lang/String;
    .end local v15    # "file":Ljava/io/File;
    .end local v16    # "filename":Ljava/lang/String;
    .end local v17    # "i$":I
    .end local v19    # "len$":I
    .end local v20    # "localDataUri":Landroid/net/Uri;
    .end local v21    # "request":Lcom/android/contacts/vcard/ImportRequest;
    :cond_10
    const-string v4, "VCardImportPreview"

    const-string v5, "Empty import requests. Ignore it."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_1e} :catch_3
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto/16 :goto_3

    .line 425
    :catch_b
    move-exception v14

    .line 426
    .restart local v14    # "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImportPreview"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 425
    .end local v9    # "cache_index":I
    .end local v10    # "context":Landroid/content/Context;
    .end local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    .local v14, "e":Ljava/lang/OutOfMemoryError;
    :catch_c
    move-exception v14

    .line 426
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImportPreview"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 425
    .local v14, "e":Ljava/io/IOException;
    :catch_d
    move-exception v14

    .line 426
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImportPreview"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 425
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :catch_e
    move-exception v14

    .line 426
    .restart local v14    # "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "VCardImportPreview"

    const-string v6, "IllegalArgumentException during unbindService"

    invoke-static {v5, v6, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a
.end method
