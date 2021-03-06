.class public Landroid/webkitsec/WebClipboard;
.super Ljava/lang/Object;
.source "WebClipboard.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;,
        Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;
    }
.end annotation


# static fields
.field static final INIT:I = 0x1

.field static final tempDirectory:Ljava/lang/String;


# instance fields
.field public DEBUG:Z

.field private mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsUsingIntent:Z

.field protected mPasteEvent:Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;

.field mPasteListener:Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;

.field private mSelectionRemovalPatterns:[Ljava/util/regex/Pattern;

.field private mToastForClipboard:Landroid/widget/Toast;

.field private mViewWidth:I

.field private mZoomFactor:F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.EmailTempImage/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/webkitsec/WebClipboard;->tempDirectory:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v2, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    .line 77
    iput-object v1, p0, Landroid/webkitsec/WebClipboard;->mPasteEvent:Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;

    .line 79
    iput-object v1, p0, Landroid/webkitsec/WebClipboard;->mPasteListener:Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;

    .line 85
    iput v2, p0, Landroid/webkitsec/WebClipboard;->mViewWidth:I

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkitsec/WebClipboard;->mZoomFactor:F

    .line 88
    iput-object v1, p0, Landroid/webkitsec/WebClipboard;->mSelectionRemovalPatterns:[Ljava/util/regex/Pattern;

    .line 90
    iput-boolean v2, p0, Landroid/webkitsec/WebClipboard;->mIsUsingIntent:Z

    .line 92
    iput-object v1, p0, Landroid/webkitsec/WebClipboard;->mToastForClipboard:Landroid/widget/Toast;

    .line 98
    const-string v0, "clipboardEx"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    iput-object v0, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    .line 101
    const-string/jumbo v0, "webclipboard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clipservice: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput-object p1, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    .line 105
    new-instance v0, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;-><init>(Landroid/webkitsec/WebClipboard;)V

    iput-object v0, p0, Landroid/webkitsec/WebClipboard;->mPasteEvent:Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;

    .line 107
    invoke-virtual {p0}, Landroid/webkitsec/WebClipboard;->createHandler()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Landroid/webkitsec/WebClipboard;)V
    .registers 1
    .param p0, "x0"    # Landroid/webkitsec/WebClipboard;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/webkitsec/WebClipboard;->nativeInitPasteboardJni()V

    return-void
.end method

.method static synthetic access$100(Landroid/webkitsec/WebClipboard;Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebClipboard;
    .param p1, "x1"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/webkitsec/WebClipboard;->pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V

    return-void
.end method

.method static synthetic access$200(Landroid/webkitsec/WebClipboard;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Landroid/webkitsec/WebClipboard;

    .prologue
    .line 65
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private deleteDirectory(Ljava/io/File;)V
    .registers 7
    .param p1, "path"    # Ljava/io/File;

    .prologue
    .line 137
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteDirectory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_40

    .line 139
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 140
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_27
    array-length v2, v0

    if-ge v1, v2, :cond_40

    .line 141
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 142
    aget-object v2, v0, v1

    invoke-direct {p0, v2}, Landroid/webkitsec/WebClipboard;->deleteDirectory(Ljava/io/File;)V

    .line 140
    :goto_37
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    .line 145
    :cond_3a
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_37

    .line 149
    .end local v0    # "files":[Ljava/io/File;
    .end local v1    # "i":I
    :cond_40
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 150
    return-void
.end method

.method private giveFileUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 159
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "giveFileUrl ent "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 161
    .local v1, "mFile":Ljava/io/File;
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "fileURL":Ljava/lang/String;
    return-object v0
.end method

.method private makeHtmlFragmentForInsertedImage(Ljava/lang/String;)Ljava/lang/String;
    .registers 22
    .param p1, "htmlFragment"    # Ljava/lang/String;

    .prologue
    .line 668
    const/4 v13, 0x0

    .line 670
    .local v13, "result":Ljava/lang/String;
    const-string v16, "WebClipboard"

    const-string/jumbo v17, "makeHtmlFragmentForInsertedImage"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    if-nez p1, :cond_16

    .line 673
    const-string v16, "WebClipboard"

    const-string/jumbo v17, "makeHtmlFragmentForInsertedImage htmlFragment == null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const-string v16, ""

    .line 786
    :goto_15
    return-object v16

    .line 677
    :cond_16
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 679
    .local v8, "options":Landroid/graphics/BitmapFactory$Options;
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 680
    .local v6, "imageUri":Landroid/net/Uri;
    invoke-virtual {v6}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 684
    .local v2, "absoluteFilePath":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/webkitsec/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 685
    .local v3, "dstFilePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 687
    .local v7, "mFile":Ljava/io/File;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 688
    .local v11, "originalFile":Ljava/io/File;
    const-wide/32 v16, 0x100000

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gtz v16, :cond_5a

    .line 690
    const-string v16, "WebClipboard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "####################### originalFile.length() : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_5a
    const/4 v14, 0x0

    .line 696
    .local v14, "src":Landroid/graphics/Bitmap;
    :try_start_5b
    invoke-static {v2, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_5e
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5b .. :try_end_5e} :catch_166

    move-result-object v14

    .line 705
    const-string v16, "WebClipboard"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "####################### htmlFragment : "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget v10, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 708
    .local v10, "originWidth":I
    iget v9, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 709
    .local v9, "originHeight":I
    move-object/from16 v0, p0

    iget v15, v0, Landroid/webkitsec/WebClipboard;->mViewWidth:I

    .line 710
    .local v15, "width":I
    mul-int v16, v9, v15

    div-int v5, v16, v10

    .line 712
    .local v5, "height":I
    const-wide/32 v16, 0x100000

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-gtz v16, :cond_1c6

    .line 714
    const-string v16, "WebClipboard"

    const-string v17, "####################### htmlFragment : Big Data"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    if-eqz v14, :cond_e6

    .line 719
    :try_start_b1
    new-instance v12, Ljava/io/FileOutputStream;

    invoke-direct {v12, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 721
    .local v12, "outStream":Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, ".jpg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    if-gtz v16, :cond_ce

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string v17, ".jpeg"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_16e

    .line 723
    :cond_ce
    const-string v16, "WebClipboard"

    const-string v17, "####################### htmlFragment : Bitmap.CompressFormat.JPEG"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 725
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 726
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_e6
    .catch Ljava/io/FileNotFoundException; {:try_start_b1 .. :try_end_e6} :catch_195
    .catch Ljava/io/IOException; {:try_start_b1 .. :try_end_e6} :catch_1be

    .line 763
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    :cond_e6
    :goto_e6
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 767
    if-eqz v15, :cond_1df

    .line 769
    if-le v15, v10, :cond_f4

    .line 771
    move v15, v10

    .line 772
    move v5, v9

    .line 775
    :cond_f4
    const-wide/16 v16, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebClipboard;->mZoomFactor:F

    move/from16 v18, v0

    const/high16 v19, 0x42c80000

    div-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    cmpg-double v16, v16, v18

    if-gez v16, :cond_12d

    .line 776
    mul-int/lit8 v16, v15, 0x64

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebClipboard;->mZoomFactor:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v15, v0

    .line 777
    mul-int/lit8 v16, v5, 0x64

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkitsec/WebClipboard;->mZoomFactor:F

    move/from16 v17, v0

    div-float v16, v16, v17

    move/from16 v0, v16

    float-to-int v5, v0

    .line 780
    :cond_12d
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<img src="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " width="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " height="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " />"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    .line 781
    goto/16 :goto_15

    .line 697
    .end local v5    # "height":I
    .end local v9    # "originHeight":I
    .end local v10    # "originWidth":I
    .end local v15    # "width":I
    :catch_166
    move-exception v4

    .line 698
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    const/4 v7, 0x0

    .line 699
    const/4 v11, 0x0

    .line 700
    const/4 v8, 0x0

    .line 702
    const-string v16, ""

    goto/16 :goto_15

    .line 728
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    .restart local v5    # "height":I
    .restart local v9    # "originHeight":I
    .restart local v10    # "originWidth":I
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    .restart local v15    # "width":I
    :cond_16e
    :try_start_16e
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v16

    const-string/jumbo v17, "png"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v16

    if-lez v16, :cond_19d

    .line 730
    const-string v16, "WebClipboard"

    const-string v17, "####################### htmlFragment : Bitmap.CompressFormat.PNG"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    sget-object v16, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v17, 0x64

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v14, v0, v1, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 732
    invoke-virtual {v12}, Ljava/io/OutputStream;->flush()V

    .line 733
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_193
    .catch Ljava/io/FileNotFoundException; {:try_start_16e .. :try_end_193} :catch_195
    .catch Ljava/io/IOException; {:try_start_16e .. :try_end_193} :catch_1be

    goto/16 :goto_e6

    .line 745
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    :catch_195
    move-exception v4

    .line 746
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 747
    const-string v16, ""

    goto/16 :goto_15

    .line 737
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v12    # "outStream":Ljava/io/FileOutputStream;
    :cond_19d
    const/16 v16, 0x1

    :try_start_19f
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/webkitsec/WebClipboard;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_1b9

    .line 739
    const-string v16, "WebClipboard"

    const-string v17, "####################### makeHtmlFragmentForInsertedImage : copyFile Fail !!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V

    .line 741
    const-string v16, ""

    goto/16 :goto_15

    .line 743
    :cond_1b9
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_1bc
    .catch Ljava/io/FileNotFoundException; {:try_start_19f .. :try_end_1bc} :catch_195
    .catch Ljava/io/IOException; {:try_start_19f .. :try_end_1bc} :catch_1be

    goto/16 :goto_e6

    .line 748
    .end local v12    # "outStream":Ljava/io/FileOutputStream;
    :catch_1be
    move-exception v4

    .line 749
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 750
    const-string v16, ""

    goto/16 :goto_15

    .line 756
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1c6
    const/16 v16, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/webkitsec/WebClipboard;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_e6

    .line 758
    const-string v16, "WebClipboard"

    const-string v17, "####################### makeHtmlFragmentForInsertedImage : copyFile Fail !!!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    const-string v16, ""

    goto/16 :goto_15

    .line 785
    :cond_1df
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "<img src="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " />"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v16, v13

    .line 786
    goto/16 :goto_15
.end method

.method private native nativeInitPasteboardJni()V
.end method

.method private pasteClipBoardData(Landroid/sec/clipboard/data/ClipboardData;)V
    .registers 14
    .param p1, "data"    # Landroid/sec/clipboard/data/ClipboardData;

    .prologue
    .line 602
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "pasteClipBoardData"

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 604
    if-nez p1, :cond_b

    .line 658
    :cond_a
    :goto_a
    return-void

    .line 606
    :cond_b
    const/4 v5, 0x0

    .line 608
    .local v5, "paste":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v0

    .line 610
    .local v0, "dataFormat":I
    const/4 v9, 0x4

    if-ne v0, v9, :cond_43

    move-object v2, p1

    .line 611
    check-cast v2, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 612
    .local v2, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v2}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 651
    .end local v2    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_1e
    :goto_1e
    if-eqz v5, :cond_a

    .line 652
    iget-boolean v9, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v9, :cond_3d

    .line 653
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pasteClipBoardData paste not NULL"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 655
    :cond_3d
    iget-object v9, p0, Landroid/webkitsec/WebClipboard;->mPasteListener:Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;

    invoke-interface {v9, v5, v0}, Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;->onPaste(Ljava/lang/String;I)V

    goto :goto_a

    .line 613
    :cond_43
    const/4 v9, 0x2

    if-ne v0, v9, :cond_7f

    .line 614
    const-string v9, "WebClipboard"

    const-string/jumbo v10, "pasteClipBoardData FORMAT_TEXT_ID"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, p1

    .line 615
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 616
    .local v6, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 617
    .local v7, "tmp_data_str":Ljava/lang/String;
    if-eqz v7, :cond_7d

    .line 618
    invoke-static {v7}, Landroid/webkitsec/HtmlComposerViewUtils;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 622
    :goto_5f
    iget-boolean v9, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v9, :cond_1e

    .line 623
    const-string v9, "WebClipboard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pasteClipBoardData FORMAT_TEXT_ID"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 621
    :cond_7d
    const/4 v5, 0x0

    goto :goto_5f

    .line 626
    .end local v6    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v7    # "tmp_data_str":Ljava/lang/String;
    :cond_7f
    const/4 v9, 0x3

    if-ne v0, v9, :cond_d2

    .line 627
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "pasteClipBoardData FORMAT_BITMAP_ID "

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v3, p1

    .line 628
    check-cast v3, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 630
    .local v3, "imageData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v3}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/webkitsec/WebClipboard;->giveFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 633
    .local v1, "fileUrl":Ljava/lang/String;
    iget-boolean v9, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v9, :cond_b2

    .line 634
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pasteClipBoardData fileUrl "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 636
    :cond_b2
    move-object v5, v1

    .line 637
    iget-boolean v9, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v9, :cond_1e

    .line 638
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "pasteClipBoardData paste fileUrl "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 641
    .end local v1    # "fileUrl":Ljava/lang/String;
    .end local v3    # "imageData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    :cond_d2
    const/4 v9, 0x5

    if-ne v0, v9, :cond_1e

    .line 642
    const-string v9, "WebClipboard"

    const-string/jumbo v10, "pasteClipBoardDat FORMAT_URI_ID"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, p1

    .line 643
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 644
    .local v8, "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v4

    .line 645
    .local v4, "imgUri":Landroid/net/Uri;
    if-eqz v4, :cond_1e

    .line 646
    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1e
.end method

.method private saveBitampTemporary(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .registers 14
    .param p1, "bitmapForSave"    # Landroid/graphics/Bitmap;

    .prologue
    .line 227
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v10, "saveBitampTemporary ent "

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 229
    new-instance v0, Ljava/io/File;

    sget-object v9, Landroid/webkitsec/WebClipboard;->tempDirectory:Ljava/lang/String;

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "HtmlComposerTempDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 233
    new-instance v7, Ljava/util/Random;

    invoke-direct {v7}, Ljava/util/Random;-><init>()V

    .line 234
    .local v7, "randNum":Ljava/util/Random;
    const/16 v9, 0x1f4

    invoke-virtual {v7, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v8

    .line 235
    .local v8, "randNumber":I
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v10, Landroid/webkitsec/WebClipboard;->tempDirectory:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "file_temp_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    .local v2, "filePath":Ljava/lang/String;
    iget-boolean v9, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v9, :cond_59

    .line 238
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveBitampTemporary filePath "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 241
    :cond_59
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 243
    .local v4, "mFile":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_67

    .line 244
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 247
    :cond_67
    const/4 v5, 0x0

    .line 250
    .local v5, "out":Ljava/io/FileOutputStream;
    :try_start_68
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/io/FileNotFoundException; {:try_start_68 .. :try_end_6d} :catch_a0

    .line 251
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .local v6, "out":Ljava/io/FileOutputStream;
    :try_start_6d
    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x64

    invoke-virtual {p1, v9, v10, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_6d .. :try_end_74} :catch_ab

    .line 256
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "fileURL":Ljava/lang/String;
    iget-boolean v9, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v9, :cond_99

    .line 258
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "saveBitampTemporary fileUrl "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 261
    :cond_99
    if-eqz v6, :cond_9e

    .line 262
    :try_start_9b
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_9e
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_9e} :catch_a6

    :cond_9e
    :goto_9e
    move-object v5, v6

    .line 266
    .end local v3    # "fileURL":Ljava/lang/String;
    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    :goto_9f
    return-object v3

    .line 252
    :catch_a0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_a1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 254
    const/4 v3, 0x0

    goto :goto_9f

    .line 263
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v5    # "out":Ljava/io/FileOutputStream;
    .restart local v3    # "fileURL":Ljava/lang/String;
    .restart local v6    # "out":Ljava/io/FileOutputStream;
    :catch_a6
    move-exception v1

    .line 264
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9e

    .line 252
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fileURL":Ljava/lang/String;
    :catch_ab
    move-exception v1

    move-object v5, v6

    .end local v6    # "out":Ljava/io/FileOutputStream;
    .restart local v5    # "out":Ljava/io/FileOutputStream;
    goto :goto_a1
.end method

.method private saveBitampTemporary(Ljava/lang/String;)Ljava/lang/String;
    .registers 16
    .param p1, "imageFilePath"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 170
    const/4 v3, 0x0

    .line 171
    .local v3, "in":Ljava/io/FileReader;
    const/4 v6, 0x0

    .line 173
    .local v6, "out":Ljava/io/FileWriter;
    :try_start_3
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v12, "saveBitampTemporary String ent "

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 175
    iget-boolean v11, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v11, :cond_28

    .line 176
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saveBitmapTemporary imageFilePath: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 179
    :cond_28
    invoke-virtual {p0, p1}, Landroid/webkitsec/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 181
    .local v9, "tmpFilePath":Ljava/lang/String;
    iget-boolean v11, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v11, :cond_49

    .line 182
    sget-object v11, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "saveBitampTemporary String tmpFilePath "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 186
    :cond_49
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 187
    .local v5, "inputFile":Ljava/io/File;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v8, "outputFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5c

    .line 191
    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 195
    :cond_5c
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_61} :catch_be
    .catchall {:try_start_3 .. :try_end_61} :catchall_98

    .line 196
    .end local v3    # "in":Ljava/io/FileReader;
    .local v4, "in":Ljava/io/FileReader;
    :try_start_61
    new-instance v7, Ljava/io/FileWriter;

    invoke-direct {v7, v8}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_66} :catch_c0
    .catchall {:try_start_61 .. :try_end_66} :catchall_b7

    .line 199
    .end local v6    # "out":Ljava/io/FileWriter;
    .local v7, "out":Ljava/io/FileWriter;
    :goto_66
    :try_start_66
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->read()I

    move-result v0

    .local v0, "c":I
    const/4 v11, -0x1

    if-eq v0, v11, :cond_83

    .line 200
    invoke-virtual {v7, v0}, Ljava/io/OutputStreamWriter;->write(I)V
    :try_end_70
    .catch Ljava/io/IOException; {:try_start_66 .. :try_end_70} :catch_71
    .catchall {:try_start_66 .. :try_end_70} :catchall_ba

    goto :goto_66

    .line 206
    .end local v0    # "c":I
    :catch_71
    move-exception v1

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileWriter;
    .restart local v6    # "out":Ljava/io/FileWriter;
    move-object v3, v4

    .line 207
    .end local v4    # "in":Ljava/io/FileReader;
    .end local v5    # "inputFile":Ljava/io/File;
    .end local v8    # "outputFile":Ljava/io/File;
    .end local v9    # "tmpFilePath":Ljava/lang/String;
    .local v1, "e":Ljava/io/IOException;
    .restart local v3    # "in":Ljava/io/FileReader;
    :goto_74
    :try_start_74
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_98

    .line 212
    if-eqz v3, :cond_7c

    .line 213
    :try_start_79
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 215
    :cond_7c
    if-eqz v6, :cond_81

    .line 216
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_81
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_81} :catch_aa

    :cond_81
    move-object v2, v10

    .line 219
    .end local v1    # "e":Ljava/io/IOException;
    :goto_82
    return-object v2

    .line 202
    .end local v3    # "in":Ljava/io/FileReader;
    .end local v6    # "out":Ljava/io/FileWriter;
    .restart local v0    # "c":I
    .restart local v4    # "in":Ljava/io/FileReader;
    .restart local v5    # "inputFile":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/FileWriter;
    .restart local v8    # "outputFile":Ljava/io/File;
    .restart local v9    # "tmpFilePath":Ljava/lang/String;
    :cond_83
    :try_start_83
    invoke-static {v8}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_8a} :catch_71
    .catchall {:try_start_83 .. :try_end_8a} :catchall_ba

    move-result-object v2

    .line 212
    .local v2, "fileURL":Ljava/lang/String;
    if-eqz v4, :cond_90

    .line 213
    :try_start_8d
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 215
    :cond_90
    if-eqz v7, :cond_95

    .line 216
    invoke-virtual {v7}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_95
    .catch Ljava/io/IOException; {:try_start_8d .. :try_end_95} :catch_af

    :cond_95
    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileWriter;
    .restart local v6    # "out":Ljava/io/FileWriter;
    move-object v3, v4

    .line 204
    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_82

    .line 211
    .end local v0    # "c":I
    .end local v2    # "fileURL":Ljava/lang/String;
    .end local v5    # "inputFile":Ljava/io/File;
    .end local v8    # "outputFile":Ljava/io/File;
    .end local v9    # "tmpFilePath":Ljava/lang/String;
    :catchall_98
    move-exception v11

    .line 212
    :goto_99
    if-eqz v3, :cond_9e

    .line 213
    :try_start_9b
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V

    .line 215
    :cond_9e
    if-eqz v6, :cond_a3

    .line 216
    invoke-virtual {v6}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_9b .. :try_end_a3} :catch_a4

    .line 211
    :cond_a3
    throw v11

    .line 217
    :catch_a4
    move-exception v1

    .line 218
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_a8
    move-object v2, v10

    .line 219
    goto :goto_82

    .line 217
    :catch_aa
    move-exception v1

    .line 218
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a8

    .line 217
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "in":Ljava/io/FileReader;
    .end local v6    # "out":Ljava/io/FileWriter;
    .restart local v0    # "c":I
    .restart local v2    # "fileURL":Ljava/lang/String;
    .restart local v4    # "in":Ljava/io/FileReader;
    .restart local v5    # "inputFile":Ljava/io/File;
    .restart local v7    # "out":Ljava/io/FileWriter;
    .restart local v8    # "outputFile":Ljava/io/File;
    .restart local v9    # "tmpFilePath":Ljava/lang/String;
    :catch_af
    move-exception v1

    .line 218
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileWriter;
    .restart local v6    # "out":Ljava/io/FileWriter;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    move-object v2, v10

    .line 219
    goto :goto_82

    .line 211
    .end local v0    # "c":I
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fileURL":Ljava/lang/String;
    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    :catchall_b7
    move-exception v11

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_99

    .end local v3    # "in":Ljava/io/FileReader;
    .end local v6    # "out":Ljava/io/FileWriter;
    .restart local v4    # "in":Ljava/io/FileReader;
    .restart local v7    # "out":Ljava/io/FileWriter;
    :catchall_ba
    move-exception v11

    move-object v6, v7

    .end local v7    # "out":Ljava/io/FileWriter;
    .restart local v6    # "out":Ljava/io/FileWriter;
    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_99

    .line 206
    .end local v5    # "inputFile":Ljava/io/File;
    .end local v8    # "outputFile":Ljava/io/File;
    .end local v9    # "tmpFilePath":Ljava/lang/String;
    :catch_be
    move-exception v1

    goto :goto_74

    .end local v3    # "in":Ljava/io/FileReader;
    .restart local v4    # "in":Ljava/io/FileReader;
    .restart local v5    # "inputFile":Ljava/io/File;
    .restart local v8    # "outputFile":Ljava/io/File;
    .restart local v9    # "tmpFilePath":Ljava/lang/String;
    :catch_c0
    move-exception v1

    move-object v3, v4

    .end local v4    # "in":Ljava/io/FileReader;
    .restart local v3    # "in":Ljava/io/FileReader;
    goto :goto_74
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12
    .param p1, "src"    # Ljava/lang/String;
    .param p2, "dst"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 793
    const/4 v3, 0x0

    .line 794
    .local v3, "source":Ljava/io/FileInputStream;
    const/4 v5, 0x0

    .line 796
    .local v5, "target":Ljava/io/FileOutputStream;
    :try_start_3
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_8} :catch_7b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_3e
    .catchall {:try_start_3 .. :try_end_8} :catchall_52

    .line 797
    .end local v3    # "source":Ljava/io/FileInputStream;
    .local v4, "source":Ljava/io/FileInputStream;
    :try_start_8
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_d} :catch_7d
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_d} :catch_74
    .catchall {:try_start_8 .. :try_end_d} :catchall_6d

    .line 799
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .local v6, "target":Ljava/io/FileOutputStream;
    const/16 v8, 0x400

    :try_start_f
    new-array v0, v8, [B

    .line 800
    .local v0, "buffer":[B
    const/4 v2, 0x0

    .line 801
    .local v2, "i":I
    :goto_12
    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_2f

    .line 802
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_1d} :catch_1e
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1d} :catch_77
    .catchall {:try_start_f .. :try_end_1d} :catchall_70

    goto :goto_12

    .line 805
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_1e
    move-exception v1

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 806
    .end local v4    # "source":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/io/FileNotFoundException;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    :goto_21
    :try_start_21
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_52

    .line 814
    if-eqz v3, :cond_29

    .line 815
    :try_start_26
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_67

    .line 817
    :cond_29
    if-eqz v5, :cond_2e

    .line 818
    :try_start_2b
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_69

    .line 822
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_2e
    :goto_2e
    return v7

    .line 804
    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :cond_2f
    const/4 v8, 0x1

    .line 814
    if-eqz v4, :cond_35

    .line 815
    :try_start_32
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 817
    :cond_35
    if-eqz v6, :cond_3a

    .line 818
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_3a} :catch_5e

    :cond_3a
    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    move v7, v8

    .line 804
    goto :goto_2e

    .line 808
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_3e
    move-exception v1

    .line 809
    .local v1, "e":Ljava/io/IOException;
    :goto_3f
    :try_start_3f
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_42
    .catchall {:try_start_3f .. :try_end_42} :catchall_52

    .line 814
    if-eqz v3, :cond_47

    .line 815
    :try_start_44
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_65

    .line 817
    :cond_47
    if-eqz v5, :cond_2e

    .line 818
    :try_start_49
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_2e

    .line 820
    :catch_4d
    move-exception v1

    .line 821
    :goto_4e
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2e

    .line 813
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_52
    move-exception v8

    .line 814
    :goto_53
    if-eqz v3, :cond_58

    .line 815
    :try_start_55
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    .line 817
    :cond_58
    if-eqz v5, :cond_5d

    .line 818
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5d} :catch_6b

    .line 813
    :cond_5d
    throw v8

    .line 820
    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "i":I
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catch_5e
    move-exception v1

    .line 821
    .restart local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .line 822
    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_2e

    .line 820
    .end local v0    # "buffer":[B
    .end local v2    # "i":I
    :catch_65
    move-exception v1

    goto :goto_4e

    .local v1, "e":Ljava/io/FileNotFoundException;
    :catch_67
    move-exception v1

    goto :goto_4e

    :catch_69
    move-exception v1

    goto :goto_4e

    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_6b
    move-exception v1

    goto :goto_4e

    .line 813
    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catchall_6d
    move-exception v8

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_53

    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catchall_70
    move-exception v8

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_53

    .line 808
    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catch_74
    move-exception v1

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_3f

    .end local v3    # "source":Ljava/io/FileInputStream;
    .end local v5    # "target":Ljava/io/FileOutputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    .restart local v6    # "target":Ljava/io/FileOutputStream;
    :catch_77
    move-exception v1

    move-object v5, v6

    .end local v6    # "target":Ljava/io/FileOutputStream;
    .restart local v5    # "target":Ljava/io/FileOutputStream;
    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_3f

    .line 805
    :catch_7b
    move-exception v1

    goto :goto_21

    .end local v3    # "source":Ljava/io/FileInputStream;
    .restart local v4    # "source":Ljava/io/FileInputStream;
    :catch_7d
    move-exception v1

    move-object v3, v4

    .end local v4    # "source":Ljava/io/FileInputStream;
    .restart local v3    # "source":Ljava/io/FileInputStream;
    goto :goto_21
.end method

.method public declared-synchronized createHandler()V
    .registers 2

    .prologue
    .line 120
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_c

    .line 121
    new-instance v0, Landroid/webkitsec/WebClipboard$1;

    invoke-direct {v0, p0}, Landroid/webkitsec/WebClipboard$1;-><init>(Landroid/webkitsec/WebClipboard;)V

    iput-object v0, p0, Landroid/webkitsec/WebClipboard;->mHandler:Landroid/os/Handler;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 133
    :cond_c
    monitor-exit p0

    return-void

    .line 120
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public deleteTempDirectory()V
    .registers 4

    .prologue
    .line 153
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "deleteTempDirectory"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/webkitsec/WebClipboard;->tempDirectory:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v0, "HtmlComposerTempDirectory":Ljava/io/File;
    invoke-direct {p0, v0}, Landroid/webkitsec/WebClipboard;->deleteDirectory(Ljava/io/File;)V

    .line 156
    return-void
.end method

.method public dismissClipboardUI()V
    .registers 2

    .prologue
    .line 550
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->dismissUIDataDialog()V

    .line 551
    return-void
.end method

.method public getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 274
    iget-boolean v5, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v5, :cond_1c

    .line 275
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCloneFilePath filePath"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 277
    :cond_1c
    if-nez p1, :cond_20

    .line 279
    const/4 v2, 0x0

    .line 307
    :cond_1f
    :goto_1f
    return-object v2

    .line 283
    :cond_20
    new-instance v0, Ljava/io/File;

    sget-object v5, Landroid/webkitsec/WebClipboard;->tempDirectory:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "HtmlComposerTempDirectory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 288
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 289
    .local v3, "inputFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "fileName":Ljava/lang/String;
    if-eqz v1, :cond_3d

    .line 292
    const-string v5, " "

    const-string v6, "_"

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 295
    :cond_3d
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_59

    .line 297
    move-object v4, v1

    .line 298
    .local v4, "tmp":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 301
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_59
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/webkitsec/WebClipboard;->tempDirectory:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, "fullFilePath":Ljava/lang/String;
    iget-boolean v5, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v5, :cond_1f

    .line 304
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getCloneFilePath String filePath "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1f
.end method

.method public getHTML()Ljava/lang/String;
    .registers 21

    .prologue
    .line 370
    const-string v17, "WebClipboard"

    const-string v18, "getHTML enter"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v17 .. v19}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v4

    .line 373
    .local v4, "data":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v6, 0x0

    .line 375
    .local v6, "data_str":Ljava/lang/String;
    const/4 v5, -0x1

    .line 377
    .local v5, "dataFormat":I
    if-eqz v4, :cond_21

    .line 378
    invoke-virtual {v4}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v5

    .line 381
    :cond_21
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ne v5, v0, :cond_ec

    move-object v9, v4

    .line 382
    check-cast v9, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 383
    .local v9, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v9}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 384
    const-string v17, "(?i)(?:(l|L)(i|I)(n|N)(e|E))(-)(h|H)(e|E)(i|I)(g|G)(h|H)(t|T)[\\s]*[\\=\\:][\\s]*([a-zA-Z]+|[0-9]+([a-zA-Z]+|%)|[0-9]+((.)[0-9]+|))[;\\s]?"

    const-string v18, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 390
    :try_start_3e
    const-string v17, "<p"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_84

    const-string v17, "<pre"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_84

    .line 392
    const-string v17, "<p"

    const-string v18, "<span"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 394
    .local v3, "b":Ljava/lang/StringBuilder;
    const-string v17, "/p>"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "/p>"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x3

    const-string v19, "/span>"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 397
    .end local v3    # "b":Ljava/lang/StringBuilder;
    :cond_84
    const-string v17, "<div"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    if-nez v17, :cond_c0

    .line 399
    const-string v17, "<div"

    const-string v18, "<span"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 400
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 401
    .restart local v3    # "b":Ljava/lang/StringBuilder;
    const-string v17, "/div>"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    const-string v18, "/div>"

    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    add-int/lit8 v18, v18, 0x5

    const-string v19, "/span>"

    move/from16 v0, v17

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v3, v0, v1, v2}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_bf
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3e .. :try_end_bf} :catch_e5

    move-result-object v6

    .line 453
    .end local v3    # "b":Ljava/lang/StringBuilder;
    .end local v9    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_c0
    :goto_c0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_e2

    .line 454
    const-string v17, "ClipboardEx"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getHTML:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e2
    move-object/from16 v17, v6

    .line 466
    :goto_e4
    return-object v17

    .line 404
    .restart local v9    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :catch_e5
    move-exception v7

    .line 405
    .local v7, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    .line 406
    const-string v17, ""

    goto :goto_e4

    .line 408
    .end local v7    # "e":Ljava/lang/OutOfMemoryError;
    .end local v9    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    :cond_ec
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v5, v0, :cond_130

    .line 409
    const-string v17, "WebClipboard"

    const-string v18, "getHTML FORMAT_TEXT_ID"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v13, v4

    .line 410
    check-cast v13, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 411
    .local v13, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v13}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 412
    .local v14, "tmp_data_str":Ljava/lang/String;
    if-eqz v14, :cond_12d

    .line 413
    invoke-static {v14}, Landroid/webkitsec/HtmlComposerViewUtils;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 417
    :goto_10a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c0

    .line 418
    const-string v17, "WebClipboard"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "getHTML FORMAT_TEXT_ID"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c0

    .line 416
    :cond_12d
    const-string v6, ""

    goto :goto_10a

    .line 420
    .end local v13    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v14    # "tmp_data_str":Ljava/lang/String;
    :cond_130
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v5, v0, :cond_19d

    .line 421
    const/4 v12, 0x0

    .line 422
    .local v12, "paste":Ljava/lang/String;
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v18, "pasteClipBoardData FORMAT_BITMAP_ID "

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v10, v4

    .line 423
    check-cast v10, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 425
    .local v10, "imageData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v10}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/WebClipboard;->giveFileUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 428
    .local v8, "fileUrl":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_171

    .line 429
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "pasteClipBoardData fileUrl "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 431
    :cond_171
    move-object v12, v8

    .line 432
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    move/from16 v17, v0

    if-eqz v17, :cond_195

    .line 433
    sget-object v17, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "pasteClipBoardData paste fileUrl "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 437
    :cond_195
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/webkitsec/WebClipboard;->makeHtmlFragmentForInsertedImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 438
    goto/16 :goto_c0

    .end local v8    # "fileUrl":Ljava/lang/String;
    .end local v10    # "imageData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v12    # "paste":Ljava/lang/String;
    :cond_19d
    const/16 v17, 0x5

    move/from16 v0, v17

    if-ne v5, v0, :cond_1cd

    .line 439
    const-string v17, "WebClipboard"

    const-string v18, "getHTML FORMAT_URI_ID"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v15, v4

    .line 440
    check-cast v15, Landroid/sec/clipboard/data/list/ClipboardDataUri;

    .line 441
    .local v15, "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    invoke-virtual {v15}, Landroid/sec/clipboard/data/list/ClipboardDataUri;->GetUri()Landroid/net/Uri;

    move-result-object v11

    .line 442
    .local v11, "imgUri":Landroid/net/Uri;
    if-eqz v11, :cond_c0

    .line 443
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    .line 444
    .local v16, "uriString":Ljava/lang/String;
    if-eqz v16, :cond_c0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_c0

    .line 445
    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkitsec/WebClipboard;->makeHtmlFragmentForInsertedImage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_c0

    .line 450
    .end local v11    # "imgUri":Landroid/net/Uri;
    .end local v15    # "uri":Landroid/sec/clipboard/data/list/ClipboardDataUri;
    .end local v16    # "uriString":Ljava/lang/String;
    :cond_1cd
    const-string v17, ""

    goto/16 :goto_e4
.end method

.method public getHTMLForCheckingSize()Ljava/lang/String;
    .registers 14

    .prologue
    .line 471
    iget-object v10, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v11, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    .line 474
    .local v0, "data":Landroid/sec/clipboard/data/ClipboardData;
    const/4 v1, -0x1

    .line 476
    .local v1, "dataFormat":I
    if-eqz v0, :cond_10

    .line 477
    invoke-virtual {v0}, Landroid/sec/clipboard/data/ClipboardData;->GetFomat()I

    move-result v1

    .line 480
    :cond_10
    const/4 v10, 0x4

    if-ne v1, v10, :cond_3b

    move-object v5, v0

    .line 481
    check-cast v5, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    .line 482
    .local v5, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v5}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->GetHTMLFragment()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 516
    .end local v5    # "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    .local v2, "data_str":Ljava/lang/String;
    :cond_1e
    :goto_1e
    iget-boolean v10, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v10, :cond_3a

    .line 517
    const-string v10, "ClipboardEx"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHTML:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    .end local v2    # "data_str":Ljava/lang/String;
    :cond_3a
    :goto_3a
    return-object v2

    .line 483
    :cond_3b
    const/4 v10, 0x2

    if-ne v1, v10, :cond_76

    .line 484
    const-string v10, "WebClipboard"

    const-string v11, "getHTMLForCheckingSize FORMAT_TEXT_ID"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v8, v0

    .line 485
    check-cast v8, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 486
    .local v8, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v8}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 487
    .local v9, "tmp_data_str":Ljava/lang/String;
    if-eqz v9, :cond_73

    .line 488
    invoke-static {v9}, Landroid/webkitsec/HtmlComposerViewUtils;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 492
    .restart local v2    # "data_str":Ljava/lang/String;
    :goto_56
    iget-boolean v10, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v10, :cond_1e

    .line 493
    const-string v10, "WebClipboard"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHTMLForCheckingSize FORMAT_TEXT_ID"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    .line 491
    .end local v2    # "data_str":Ljava/lang/String;
    :cond_73
    const-string v2, ""

    .restart local v2    # "data_str":Ljava/lang/String;
    goto :goto_56

    .line 495
    .end local v2    # "data_str":Ljava/lang/String;
    .end local v8    # "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    .end local v9    # "tmp_data_str":Ljava/lang/String;
    :cond_76
    const/4 v10, 0x3

    if-ne v1, v10, :cond_cf

    .line 496
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "getHTML bitmap "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v6, v0

    .line 497
    check-cast v6, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;

    .line 500
    .local v6, "imageData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    invoke-virtual {v6}, Landroid/sec/clipboard/data/list/ClipboardDataBitmap;->GetBitmapPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Landroid/webkitsec/WebClipboard;->getCloneFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "filePath":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    .local v7, "mFile":Ljava/io/File;
    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 505
    .local v4, "fileUrl":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<img src="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " />"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 506
    .restart local v2    # "data_str":Ljava/lang/String;
    iget-boolean v10, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v10, :cond_1e

    .line 507
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHTML bitmap = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 513
    .end local v2    # "data_str":Ljava/lang/String;
    .end local v3    # "filePath":Ljava/lang/String;
    .end local v4    # "fileUrl":Ljava/lang/String;
    .end local v6    # "imageData":Landroid/sec/clipboard/data/list/ClipboardDataBitmap;
    .end local v7    # "mFile":Ljava/io/File;
    :cond_cf
    const-string v2, ""

    goto/16 :goto_3a
.end method

.method public getText()Ljava/lang/String;
    .registers 5

    .prologue
    .line 348
    iget-object v1, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;I)Landroid/sec/clipboard/data/ClipboardData;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    .line 350
    .local v0, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 351
    iget-boolean v1, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v1, :cond_33

    .line 352
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    :cond_33
    invoke-virtual {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;->GetText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    :goto_3b
    return-object v1

    :cond_3c
    const/4 v1, 0x0

    goto :goto_3b
.end method

.method public hasData()Z
    .registers 6

    .prologue
    .line 317
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v1

    .line 318
    .local v1, "rp":Landroid/sec/enterprise/RestrictionPolicy;
    invoke-virtual {v1}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v2

    if-nez v2, :cond_1d

    .line 319
    iget-object v2, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 320
    .local v0, "clip":Landroid/content/ClipboardManager;
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v2

    .line 324
    .end local v0    # "clip":Landroid/content/ClipboardManager;
    :goto_1c
    return v2

    :cond_1d
    iget-object v2, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v3, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v4, 0x4

    invoke-virtual {v2, v3, v4}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v3, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_3e

    iget-object v2, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v3, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/sec/clipboard/ClipboardExManager;->hasData(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_40

    :cond_3e
    const/4 v2, 0x1

    goto :goto_1c

    :cond_40
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public initWebClipboard()V
    .registers 4

    .prologue
    .line 112
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkitsec/WebClipboard;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 113
    return-void
.end method

.method public isShowing()Z
    .registers 2

    .prologue
    .line 328
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    invoke-virtual {v0}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v0

    return v0
.end method

.method public launchClipboardUI()V
    .registers 5

    .prologue
    .line 555
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v1, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    const/4 v2, 0x4

    iget-object v3, p0, Landroid/webkitsec/WebClipboard;->mPasteEvent:Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2, v3}, Landroid/sec/clipboard/ClipboardExManager;->getData(Landroid/content/Context;ILandroid/sec/clipboard/IClipboardDataPasteEvent;)Z

    .line 556
    return-void
.end method

.method public setDataToClipboard(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 332
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setDataToClipboard "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 335
    :try_start_18
    const-string v1, "TEXT"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 336
    invoke-virtual {p0, p2}, Landroid/webkitsec/WebClipboard;->setText(Ljava/lang/String;)V

    .line 344
    :cond_23
    :goto_23
    return-void

    .line 337
    :cond_24
    const-string v1, "HTML"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 338
    invoke-virtual {p0, p2}, Landroid/webkitsec/WebClipboard;->setHTML(Ljava/lang/String;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_2f} :catch_30

    goto :goto_23

    .line 340
    :catch_30
    move-exception v0

    .line 341
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataToClipboard: Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23
.end method

.method public setHTML(Ljava/lang/String;)V
    .registers 12
    .param p1, "charSeq"    # Ljava/lang/String;

    .prologue
    .line 524
    iget-boolean v7, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v7, :cond_1d

    .line 525
    const-string v7, "WebClipboard"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setHTML:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_1d
    iget-object v6, p0, Landroid/webkitsec/WebClipboard;->mSelectionRemovalPatterns:[Ljava/util/regex/Pattern;

    .line 529
    .local v6, "patterns":[Ljava/util/regex/Pattern;
    if-eqz p1, :cond_3a

    if-eqz v6, :cond_3a

    array-length v7, v6

    if-lez v7, :cond_3a

    .line 530
    move-object v0, v6

    .local v0, "arr$":[Ljava/util/regex/Pattern;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_29
    if-ge v2, v4, :cond_3a

    aget-object v5, v0, v2

    .line 531
    .local v5, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 530
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 534
    .end local v0    # "arr$":[Ljava/util/regex/Pattern;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "pattern":Ljava/util/regex/Pattern;
    :cond_3a
    iget-boolean v7, p0, Landroid/webkitsec/WebClipboard;->mIsUsingIntent:Z

    if-eqz v7, :cond_5b

    .line 537
    new-instance v3, Landroid/content/Intent;

    const-string v7, "com.samsung.clipboardsaveservice.CLIPBOARD_COPY_HTML_RECEIVER"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 538
    .local v3, "intent":Landroid/content/Intent;
    const/16 v7, 0x20

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 539
    const-string v7, "htmlPath"

    invoke-virtual {v3, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 540
    const-string v7, "darkTheme"

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 541
    iget-object v7, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 547
    .end local v3    # "intent":Landroid/content/Intent;
    :goto_5a
    return-void

    .line 543
    :cond_5b
    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;-><init>()V

    .line 544
    .local v1, "htmlData":Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;
    invoke-virtual {v1, p1}, Landroid/sec/clipboard/data/list/ClipboardDataHTMLFragment;->SetHTMLFragment(Ljava/lang/CharSequence;)Z

    .line 545
    iget-object v7, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v8, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v8, v1}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    goto :goto_5a
.end method

.method public setInterfaceWithClipboard(Z)V
    .registers 2
    .param p1, "isUsingIntent"    # Z

    .prologue
    .line 840
    iput-boolean p1, p0, Landroid/webkitsec/WebClipboard;->mIsUsingIntent:Z

    .line 841
    return-void
.end method

.method setPasteListener(Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;)V
    .registers 2
    .param p1, "pasteListener"    # Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;

    .prologue
    .line 312
    iput-object p1, p0, Landroid/webkitsec/WebClipboard;->mPasteListener:Landroid/webkitsec/WebClipboard$OnPasteFromSelectionUIListener;

    .line 313
    return-void
.end method

.method public setSelectionRemovalPatterns([Ljava/util/regex/Pattern;)V
    .registers 2
    .param p1, "patterns"    # [Ljava/util/regex/Pattern;

    .prologue
    .line 836
    iput-object p1, p0, Landroid/webkitsec/WebClipboard;->mSelectionRemovalPatterns:[Ljava/util/regex/Pattern;

    .line 837
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .registers 6
    .param p1, "charSeq"    # Ljava/lang/String;

    .prologue
    .line 361
    new-instance v0, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v0}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    .line 362
    .local v0, "textData":Landroid/sec/clipboard/data/list/ClipboardDataText;
    invoke-virtual {v0, p1}, Landroid/sec/clipboard/data/list/ClipboardDataText;->SetText(Ljava/lang/CharSequence;)Z

    .line 363
    iget-object v1, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    iget-object v2, p0, Landroid/webkitsec/WebClipboard;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Landroid/sec/clipboard/ClipboardExManager;->setData(Landroid/content/Context;Landroid/sec/clipboard/data/ClipboardData;)Z

    .line 364
    iget-boolean v1, p0, Landroid/webkitsec/WebClipboard;->DEBUG:Z

    if-eqz v1, :cond_2c

    .line 365
    const-string v1, "ClipboardEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setText:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_2c
    return-void
.end method

.method public setWidthForCopiedImage(I)V
    .registers 2
    .param p1, "viewWidth"    # I

    .prologue
    .line 828
    iput p1, p0, Landroid/webkitsec/WebClipboard;->mViewWidth:I

    .line 829
    return-void
.end method

.method public setZoomFactorForPasting(F)V
    .registers 2
    .param p1, "factor"    # F

    .prologue
    .line 832
    iput p1, p0, Landroid/webkitsec/WebClipboard;->mZoomFactor:F

    .line 833
    return-void
.end method

.method public updateClipboardUI()V
    .registers 4

    .prologue
    .line 559
    iget-object v0, p0, Landroid/webkitsec/WebClipboard;->mClipboardEx:Landroid/sec/clipboard/ClipboardExManager;

    const/4 v1, 0x4

    iget-object v2, p0, Landroid/webkitsec/WebClipboard;->mPasteEvent:Landroid/webkitsec/WebClipboard$IClipboardDataPasteEventImpl;

    invoke-virtual {v0, v1, v2}, Landroid/sec/clipboard/ClipboardExManager;->updateData(ILandroid/sec/clipboard/IClipboardDataPasteEvent;)V

    .line 560
    return-void
.end method
