.class Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;
.super Ljava/lang/Thread;
.source "ImportVCardActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/vcard/ImportVCardActivity;
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

.field final synthetic this$0:Lcom/android/contacts/vcard/ImportVCardActivity;


# direct methods
.method public constructor <init>(Lcom/android/contacts/vcard/ImportVCardActivity;[Landroid/net/Uri;)V
    .locals 4
    .param p1, "context"    # Lcom/android/contacts/vcard/ImportVCardActivity;
    .param p2, "sourceUris"    # [Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 525
    iput-object p1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 527
    iput-object p2, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    .line 529
    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    .line 533
    const-string v1, "power"

    invoke-virtual {p1, v1}, Lcom/android/contacts/ContactsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 537
    .local v0, "powerManager":Landroid/os/PowerManager;
    const v1, 0x20000006

    const-string v2, "VCardImport"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 543
    iput-object v3, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    .line 545
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
    .line 985
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v2}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    .line 987
    .local v20, "resolver":Landroid/content/ContentResolver;
    const/4 v11, 0x0

    .line 989
    .local v11, "counter":Lcom/android/vcard/VCardEntryCounter;
    const/4 v13, 0x0

    .line 991
    .local v13, "detector":Lcom/android/vcard/VCardSourceDetector;
    const/4 v9, 0x1

    .line 995
    .local v9, "vcardVersion":I
    const/16 v21, 0x0

    .line 999
    .local v21, "shouldUseV30":Z
    if-eqz p1, :cond_1

    .line 1001
    :try_start_0
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v18, "is":Ljava/io/InputStream;
    move-object/from16 v19, v18

    .line 1013
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

    .line 1017
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    const/high16 v3, -0x3bf00000

    const-string v4, "EUC-KR"

    invoke-direct {v2, v3, v4}, Lcom/android/vcard/VCardParser_V21;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_0
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :goto_1
    :try_start_1
    new-instance v12, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v12}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_1
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1031
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v12, "counter":Lcom/android/vcard/VCardEntryCounter;
    :try_start_2
    new-instance v14, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v14}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_2
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_2 .. :try_end_2} :catch_a
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 1033
    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .local v14, "detector":Lcom/android/vcard/VCardSourceDetector;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v12}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 1035
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v14}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_3 .. :try_end_3} :catch_b
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    .line 1101
    if-eqz v19, :cond_7

    .line 1105
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

    .line 1117
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    :cond_0
    :goto_2
    if-eqz v21, :cond_6

    const/4 v9, 0x2

    .line 1129
    .end local v18    # "is":Ljava/io/InputStream;
    :goto_3
    new-instance v2, Lcom/android/contacts/vcard/ImportRequest;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mAccount:Lcom/android/contacts/model/AccountWithDataSet;
    invoke-static {v3}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$500(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/model/AccountWithDataSet;

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

    .line 1005
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

    .line 1021
    :cond_2
    new-instance v2, Lcom/android/vcard/VCardParser_V21;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V21;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_5
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    .line 1119
    .end local v19    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v15

    .line 1121
    .local v15, "e":Lcom/android/vcard/exception/VCardNestedException;
    :goto_4
    const-string v2, "VCardImport"

    const-string v3, "Nested Exception is found (it may be false-positive)."

    invoke-static {v2, v3}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1107
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

    .line 1109
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    goto :goto_2

    .line 1039
    .end local v18    # "is":Ljava/io/InputStream;
    .restart local v19    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v16

    move-object v14, v13

    .end local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    move-object v12, v11

    .line 1043
    .end local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .local v16, "e1":Lcom/android/vcard/exception/VCardVersionException;
    :goto_5
    :try_start_6
    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1051
    :goto_6
    const/16 v21, 0x1

    .line 1053
    if-eqz p1, :cond_3

    .line 1055
    :try_start_7
    new-instance v18, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 1067
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

    .line 1071
    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    const/high16 v3, -0x3bf00000

    const-string v4, "EUC-KR"

    invoke-direct {v2, v3, v4}, Lcom/android/vcard/VCardParser_V30;-><init>(ILjava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1083
    :goto_8
    :try_start_9
    new-instance v11, Lcom/android/vcard/VCardEntryCounter;

    invoke-direct {v11}, Lcom/android/vcard/VCardEntryCounter;-><init>()V
    :try_end_9
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 1085
    .end local v12    # "counter":Lcom/android/vcard/VCardEntryCounter;
    .restart local v11    # "counter":Lcom/android/vcard/VCardEntryCounter;
    :try_start_a
    new-instance v13, Lcom/android/vcard/VCardSourceDetector;

    invoke-direct {v13}, Lcom/android/vcard/VCardSourceDetector;-><init>()V
    :try_end_a
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    .line 1087
    .end local v14    # "detector":Lcom/android/vcard/VCardSourceDetector;
    .restart local v13    # "detector":Lcom/android/vcard/VCardSourceDetector;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v11}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 1089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v2, v13}, Lcom/android/vcard/VCardParser;->addInterpreter(Lcom/android/vcard/VCardInterpreter;)V

    .line 1091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/android/vcard/VCardParser;->parse(Ljava/io/InputStream;)V
    :try_end_b
    .catch Lcom/android/vcard/exception/VCardVersionException; {:try_start_b .. :try_end_b} :catch_9
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 1101
    if-eqz v18, :cond_0

    .line 1105
    :try_start_c
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_c .. :try_end_c} :catch_0

    goto/16 :goto_2

    .line 1107
    :catch_3
    move-exception v2

    goto/16 :goto_2

    .line 1059
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

    .line 1075
    :cond_4
    :try_start_e
    new-instance v2, Lcom/android/vcard/VCardParser_V30;

    invoke-direct {v2}, Lcom/android/vcard/VCardParser_V30;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_8

    .line 1101
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

    .line 1105
    :try_start_f
    invoke-virtual/range {v18 .. v18}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_f .. :try_end_f} :catch_0

    .line 1109
    :cond_5
    :goto_a
    :try_start_10
    throw v2
    :try_end_10
    .catch Lcom/android/vcard/exception/VCardNestedException; {:try_start_10 .. :try_end_10} :catch_0

    .line 1093
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

    .line 1095
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

    .line 1101
    .end local v17    # "e2":Lcom/android/vcard/exception/VCardVersionException;
    :catchall_1
    move-exception v2

    goto :goto_9

    .line 1117
    .end local v16    # "e1":Lcom/android/vcard/exception/VCardVersionException;
    :cond_6
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 1045
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

    .line 1107
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

    .line 1119
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

    .line 1101
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

    .line 1093
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

    .line 1039
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

    .line 871
    const-string v7, "VCardImport"

    const-string v8, "Copy a Uri to app local storage (%s -> %s)"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    iget-object v1, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    .line 877
    .local v1, "context":Landroid/content/Context;
    invoke-virtual {v1}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 879
    .local v6, "resolver":Landroid/content/ContentResolver;
    const/4 v4, 0x0

    .line 881
    .local v4, "inputChannel":Ljava/nio/channels/ReadableByteChannel;
    const/4 v5, 0x0

    .line 883
    .local v5, "outputChannel":Ljava/nio/channels/WritableByteChannel;
    const/4 v2, 0x0

    .line 887
    .local v2, "destUri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v7

    invoke-static {v7}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v4

    .line 889
    invoke-virtual {v1, p2}, Landroid/content/ContextWrapper;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 891
    const/4 v7, 0x0

    invoke-virtual {v1, p2, v7}, Landroid/content/ContextWrapper;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    .line 893
    const/16 v7, 0x2000

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 895
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-interface {v4, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    .line 897
    iget-boolean v7, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v7, :cond_2

    .line 899
    const-string v7, "VCardImport"

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

    .line 901
    const/4 v2, 0x0

    .line 923
    .end local v2    # "destUri":Landroid/net/Uri;
    if-eqz v4, :cond_0

    .line 927
    :try_start_1
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 937
    :cond_0
    :goto_1
    if-eqz v5, :cond_1

    .line 941
    :try_start_2
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 953
    :cond_1
    :goto_2
    return-object v2

    .line 929
    :catch_0
    move-exception v3

    .line 931
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "VCardImport"

    const-string v8, "Failed to close inputChannel."

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 943
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 945
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "VCardImport"

    const-string v8, "Failed to close outputChannel"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 905
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v2    # "destUri":Landroid/net/Uri;
    :cond_2
    :try_start_3
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 907
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 909
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 923
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_3

    .line 927
    :try_start_4
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 937
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    .line 941
    :try_start_5
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    .line 947
    :cond_4
    :goto_4
    throw v7

    .line 913
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_5
    :try_start_6
    invoke-virtual {v0}, Ljava/nio/Buffer;->flip()Ljava/nio/Buffer;

    .line 915
    :goto_5
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 917
    invoke-interface {v5, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 923
    :cond_6
    if-eqz v4, :cond_7

    .line 927
    :try_start_7
    invoke-interface {v4}, Ljava/nio/channels/ReadableByteChannel;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 937
    :cond_7
    :goto_6
    if-eqz v5, :cond_1

    .line 941
    :try_start_8
    invoke-interface {v5}, Ljava/nio/channels/WritableByteChannel;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_2

    .line 943
    :catch_2
    move-exception v3

    .line 945
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "VCardImport"

    const-string v8, "Failed to close outputChannel"

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 929
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 931
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v7, "VCardImport"

    const-string v8, "Failed to close inputChannel."

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 929
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 931
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "VCardImport"

    const-string v9, "Failed to close inputChannel."

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 943
    .end local v3    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 945
    .restart local v3    # "e":Ljava/io/IOException;
    const-string v8, "VCardImport"

    const-string v9, "Failed to close outputChannel"

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 1153
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    .line 1155
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    if-eqz v0, :cond_0

    .line 1157
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mVCardParser:Lcom/android/vcard/VCardParser;

    invoke-virtual {v0}, Lcom/android/vcard/VCardParser;->cancel()V

    .line 1161
    :cond_0
    return-void
.end method

.method public finalize()V
    .locals 2

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 555
    const-string v0, "VCardImport"

    const-string v1, "WakeLock is being held."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 561
    :cond_0
    return-void
.end method

.method public getSourceUris()[Landroid/net/Uri;
    .locals 1

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 1169
    const-string v0, "VCardImport"

    const-string v1, "Cancel request has come. Abort caching vCard."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-virtual {p0}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->cancel()V

    .line 1173
    return-void
.end method

.method public run()V
    .locals 24

    .prologue
    .line 569
    const-string v4, "VCardImport"

    const-string v5, "vCard cache thread starts running."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    if-nez v4, :cond_0

    .line 573
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "vCard cache thread must be launched after a service connection is established"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 581
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 585
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 587
    const-string v4, "VCardImport"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 837
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 843
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 851
    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 859
    :goto_1
    return-void

    .line 845
    :catch_0
    move-exception v14

    .line 847
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 595
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    .line 613
    .local v10, "context":Landroid/content/Context;
    const/4 v9, 0x0

    .line 615
    .local v9, "cache_index":I
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 617
    .local v22, "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v4, :cond_3

    .line 621
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSource:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mDisplayName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/vcard/ImportRequest;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 807
    :cond_2
    :goto_2
    :try_start_4
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10

    .line 809
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v4

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;->sendImportRequest(Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 837
    :goto_3
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 843
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_b

    .line 851
    :goto_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 623
    :catch_1
    move-exception v14

    .line 625
    .local v14, "e":Lcom/android/vcard/exception/VCardException;
    :try_start_6
    const-string v4, "VCardImport"

    const-string v5, "Maybe the file is in wrong format"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 627
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v5, 0x7f0e00dd

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 837
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 843
    :try_start_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    .line 851
    .end local v14    # "e":Lcom/android/vcard/exception/VCardException;
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 845
    .restart local v14    # "e":Lcom/android/vcard/exception/VCardException;
    :catch_2
    move-exception v14

    .line 847
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 635
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Lcom/android/contacts/ContactsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 639
    .local v2, "resolver":Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mSourceUris:[Landroid/net/Uri;

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

    .line 641
    .local v3, "sourceUri":Landroid/net/Uri;
    const/16 v16, 0x0

    .line 647
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

    .line 649
    move-object/from16 v0, v16

    invoke-virtual {v10, v0}, Landroid/content/ContextWrapper;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v15

    .line 651
    .local v15, "file":Ljava/io/File;
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_4

    .line 669
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v3, v1}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->copyTo(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v20

    .line 671
    .local v20, "localDataUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v4, :cond_6

    .line 673
    const-string v4, "VCardImport"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 817
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

    .line 819
    .local v14, "e":Ljava/lang/OutOfMemoryError;
    :try_start_9
    const-string v4, "VCardImport"

    const-string v5, "OutOfMemoryError occured during caching vCard"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 823
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v5, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v23, 0x7f0e00dc

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 837
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 843
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_c

    .line 851
    .end local v14    # "e":Ljava/lang/OutOfMemoryError;
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 657
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

    .line 659
    :try_start_b
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Exceeded cache limit"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_b
    .catch Ljava/lang/OutOfMemoryError; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 827
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

    .line 829
    .local v14, "e":Ljava/io/IOException;
    :try_start_c
    const-string v4, "VCardImport"

    const-string v5, "IOException during caching vCard"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 831
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    new-instance v5, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v23, 0x7f0e00db

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/android/contacts/vcard/ImportVCardActivity$DialogDisplayer;-><init>(Lcom/android/contacts/vcard/ImportVCardActivity;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 837
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 843
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_d

    .line 851
    .end local v14    # "e":Ljava/io/IOException;
    :goto_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 663
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

    .line 667
    goto/16 :goto_7

    .line 679
    .restart local v20    # "localDataUri":Landroid/net/Uri;
    :cond_6
    if-nez v20, :cond_7

    .line 681
    :try_start_e
    const-string v4, "VCardImport"

    const-string v5, "destUri is null"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_e} :catch_3
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    .line 837
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

    const-string v5, "VCardImport"

    const-string v6, "Finished caching vCard."

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 843
    :try_start_f
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_e

    .line 851
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 853
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v6, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v5, v6}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 855
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->finish()V

    throw v4

    .line 689
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

    .line 691
    .local v12, "displayName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 699
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

    .line 705
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 707
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_8

    .line 709
    const-string v4, "VCardImport"

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

    .line 715
    :cond_8
    const-string v4, "_display_name"

    invoke-interface {v11, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v18

    .line 717
    .local v18, "index":I
    if-ltz v18, :cond_9

    .line 719
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

    .line 723
    :try_start_11
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 725
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_11
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_11 .. :try_end_11} :catch_5
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move-result-object v12

    .line 753
    .end local v18    # "index":I
    :cond_9
    :goto_b
    if-eqz v11, :cond_a

    .line 755
    :try_start_12
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 761
    :cond_a
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 763
    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/OutOfMemoryError; {:try_start_12 .. :try_end_12} :catch_3
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object v12

    .line 773
    :cond_b
    const/4 v4, 0x0

    :try_start_13
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v4, v1, v12}, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->constructImportRequest([BLandroid/net/Uri;Ljava/lang/String;)Lcom/android/contacts/vcard/ImportRequest;
    :try_end_13
    .catch Lcom/android/vcard/exception/VCardException; {:try_start_13 .. :try_end_13} :catch_6
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v21

    .line 793
    .local v21, "request":Lcom/android/contacts/vcard/ImportRequest;
    :try_start_14
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mCanceled:Z

    if-eqz v4, :cond_f

    .line 795
    const-string v4, "VCardImport"

    const-string v5, "vCard cache operation is canceled."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_14 .. :try_end_14} :catch_3
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_4
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    .line 837
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 843
    :try_start_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_a

    .line 851
    :goto_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 729
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

    .line 735
    :catch_5
    move-exception v14

    .line 737
    .local v14, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_17
    invoke-virtual {v14}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto :goto_b

    .line 753
    .end local v14    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v18    # "index":I
    :catchall_1
    move-exception v4

    if-eqz v11, :cond_d

    .line 755
    :try_start_18
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v4
    :try_end_18
    .catch Ljava/lang/OutOfMemoryError; {:try_start_18 .. :try_end_18} :catch_3
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    .line 743
    .restart local v18    # "index":I
    :cond_e
    :try_start_19
    move/from16 v0, v18

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    move-result-object v12

    goto/16 :goto_b

    .line 775
    .end local v18    # "index":I
    :catch_6
    move-exception v14

    .line 777
    .local v14, "e":Lcom/android/vcard/exception/VCardException;
    :try_start_1a
    const-string v4, "VCardImport"

    const-string v5, "Maybe the file is in wrong format"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 779
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v5, 0x7f0e00dd

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_1a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1a .. :try_end_1a} :catch_3
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_4
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 837
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 843
    :try_start_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_7

    .line 851
    .end local v14    # "e":Lcom/android/vcard/exception/VCardException;
    :goto_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 845
    .restart local v14    # "e":Lcom/android/vcard/exception/VCardException;
    :catch_7
    move-exception v14

    .line 847
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 783
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :catch_8
    move-exception v14

    .line 785
    .local v14, "e":Ljava/io/IOException;
    :try_start_1c
    const-string v4, "VCardImport"

    const-string v5, "Unexpected IOException"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 787
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const v5, 0x7f0e00db

    invoke-virtual {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->showFailureNotification(I)V
    :try_end_1c
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1c .. :try_end_1c} :catch_3
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_4
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    .line 837
    const-string v4, "VCardImport"

    const-string v5, "Finished caching vCard."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 843
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mConnection:Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;
    invoke-static {v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$300(Lcom/android/contacts/vcard/ImportVCardActivity;)Lcom/android/contacts/vcard/ImportVCardActivity$ImportRequestConnection;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_1d} :catch_9

    .line 851
    .end local v14    # "e":Ljava/io/IOException;
    :goto_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    # getter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$400(Lcom/android/contacts/vcard/ImportVCardActivity;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 853
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    const/4 v5, 0x0

    # setter for: Lcom/android/contacts/vcard/ImportVCardActivity;->mProgressDialogForCachingVCard:Landroid/app/ProgressDialog;
    invoke-static {v4, v5}, Lcom/android/contacts/vcard/ImportVCardActivity;->access$402(Lcom/android/contacts/vcard/ImportVCardActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/vcard/ImportVCardActivity$VCardCacheThread;->this$0:Lcom/android/contacts/vcard/ImportVCardActivity;

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    .line 845
    .restart local v14    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v14

    .line 847
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e

    .line 845
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v21    # "request":Lcom/android/contacts/vcard/ImportRequest;
    :catch_a
    move-exception v14

    .line 847
    .restart local v14    # "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 801
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :cond_f
    :try_start_1e
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 639
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_6

    .line 813
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
    const-string v4, "VCardImport"

    const-string v5, "Empty import requests. Ignore it."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_1e} :catch_3
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_4
    .catchall {:try_start_1e .. :try_end_1e} :catchall_0

    goto/16 :goto_3

    .line 845
    :catch_b
    move-exception v14

    .line 847
    .restart local v14    # "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 845
    .end local v9    # "cache_index":I
    .end local v10    # "context":Landroid/content/Context;
    .end local v22    # "requests":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/contacts/vcard/ImportRequest;>;"
    .local v14, "e":Ljava/lang/OutOfMemoryError;
    :catch_c
    move-exception v14

    .line 847
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 845
    .local v14, "e":Ljava/io/IOException;
    :catch_d
    move-exception v14

    .line 847
    .local v14, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "VCardImport"

    const-string v5, "IllegalArgumentException during unbindService"

    invoke-static {v4, v5, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_9

    .line 845
    .end local v14    # "e":Ljava/lang/IllegalArgumentException;
    :catch_e
    move-exception v14

    .line 847
    .restart local v14    # "e":Ljava/lang/IllegalArgumentException;
    const-string v5, "VCardImport"

    const-string v6, "IllegalArgumentException during unbindService"

    invoke-static {v5, v6, v14}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a
.end method
