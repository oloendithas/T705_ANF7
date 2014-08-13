.class public Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;
.super Ljava/lang/Object;
.source "TouchModalDataStructure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;
    }
.end annotation


# static fields
.field private static final FIXED_REGION_SIZE:I = 0x5

.field private static final NOP:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field public static count:I


# instance fields
.field private final DB_DIR:Ljava/lang/String;

.field private IS_HD:Z

.field private IS_KORMODE:Z

.field public grid:[[I

.field public initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field public keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

.field private mKBHeight:I

.field private mKBWidth:I

.field public mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

.field manager:Lcom/diotek/ime/framework/common/InputManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    sput v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->count:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    .line 85
    check-cast v0, [[I

    iput-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 87
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    iput-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    .line 114
    invoke-static {}, Lcom/diotek/ime/framework/common/InputManagerImpl;->getInstance()Lcom/diotek/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->manager:Lcom/diotek/ime/framework/common/InputManager;

    .line 122
    const-string v0, "grids"

    iput-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->DB_DIR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dump(ZIIIIII[[I)V
    .locals 15
    .param p1, "isLandscape"    # Z
    .param p2, "language"    # I
    .param p3, "mode"    # I
    .param p4, "layoutType"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "nKeys"    # I
    .param p8, "gridArray"    # [[I

    .prologue
    .line 322
    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "!@dump is called"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "grid_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p7

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "_"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p1

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ".db"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    .local v1, "FILENAME":Ljava/lang/String;
    if-nez p8, :cond_1

    .line 412
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    new-instance v7, Ljava/io/File;

    iget-object v12, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->manager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v12}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v12

    const-string v13, "grids"

    invoke-direct {v7, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 336
    .local v7, "gridDirectory":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_2

    .line 338
    invoke-virtual {v7}, Ljava/io/File;->mkdir()Z

    move-result v2

    .line 340
    .local v2, "created":Z
    const-string v12, "TMDS"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "++++++++++++++directory created = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v2    # "created":Z
    :cond_2
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 346
    .local v4, "file":Ljava/io/File;
    const-string v11, "\n"

    .line 348
    .local v11, "newline":Ljava/lang/String;
    const/4 v5, 0x0

    .line 350
    .local v5, "fos":Ljava/io/FileOutputStream;
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 354
    .local v10, "mBuffer":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .local v6, "fos":Ljava/io/FileOutputStream;
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_1
    move/from16 v0, p6

    if-ge v9, v0, :cond_4

    .line 362
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    move/from16 v0, p5

    if-ge v8, v0, :cond_3

    .line 364
    :try_start_1
    aget-object v12, p8, v8

    aget v12, v12, v9

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 366
    const-string v12, "\n"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 370
    :cond_3
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/io/OutputStream;->write([B)V

    .line 372
    const/4 v12, 0x0

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v13

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 360
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 392
    .end local v8    # "j":I
    :cond_4
    if-eqz v6, :cond_5

    .line 396
    :try_start_2
    invoke-virtual {v6}, Ljava/io/OutputStream;->flush()V

    .line 398
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_5
    :goto_3
    move-object v5, v6

    .line 410
    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 376
    .end local v9    # "k":I
    :catch_0
    move-exception v3

    .line 378
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_3
    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 392
    if-eqz v5, :cond_0

    .line 396
    :try_start_4
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 398
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 400
    :catch_1
    move-exception v3

    .line 404
    .local v3, "e":Ljava/io/IOException;
    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()"

    :goto_5
    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 380
    .end local v3    # "e":Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 382
    .local v3, "e":Ljava/lang/OutOfMemoryError;
    :goto_6
    :try_start_5
    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()- out of memory"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 383
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_6

    .line 384
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 392
    :cond_6
    if-eqz v5, :cond_0

    .line 396
    :try_start_6
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 398
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 400
    :catch_3
    move-exception v3

    .line 404
    .local v3, "e":Ljava/io/IOException;
    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()"

    goto :goto_5

    .line 386
    .end local v3    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v3

    .line 388
    .restart local v3    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_7
    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 392
    if-eqz v5, :cond_0

    .line 396
    :try_start_8
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 398
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto/16 :goto_0

    .line 400
    :catch_5
    move-exception v3

    .line 404
    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()"

    goto :goto_5

    .line 392
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    :goto_8
    if-eqz v5, :cond_7

    .line 396
    :try_start_9
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 398
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 392
    :cond_7
    :goto_9
    throw v12

    .line 400
    :catch_6
    move-exception v3

    .line 404
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v13, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v14, "Error in Function dump()"

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 400
    .end local v3    # "e":Ljava/io/IOException;
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v9    # "k":I
    :catch_7
    move-exception v3

    .line 404
    .restart local v3    # "e":Ljava/io/IOException;
    sget-object v12, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v13, "Error in Function dump()"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 392
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v8    # "j":I
    :catchall_1
    move-exception v12

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_8

    .line 386
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_7

    .line 380
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_9
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_6

    .line 376
    .end local v5    # "fos":Ljava/io/FileOutputStream;
    .restart local v6    # "fos":Ljava/io/FileOutputStream;
    :catch_a
    move-exception v3

    move-object v5, v6

    .end local v6    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4
.end method

.method public getBaseIndex(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    const/high16 v1, -0x10000000

    and-int/2addr v0, v1

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 250
    const/4 v0, -0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    const v1, 0xfff000

    and-int/2addr v0, v1

    ushr-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method public getKeyIndex(II)I
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v0, -0x1

    .line 214
    sget v1, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->count:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->count:I

    .line 215
    iget v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    iget v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v1, v1, -0x1

    if-le p2, v1, :cond_1

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 219
    :cond_1
    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const/high16 v2, -0x10000000

    and-int/2addr v1, v2

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_0

    .line 224
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    and-int/lit16 v0, v0, 0xfff

    goto :goto_0
.end method

.method getValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "temp"    # Ljava/lang/Object;

    .prologue
    .line 302
    return-void
.end method

.method getValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "temp"    # Ljava/lang/String;

    .prologue
    .line 292
    return-void
.end method

.method public increaseBL(III)V
    .locals 14
    .param p1, "currentIndex"    # I
    .param p2, "touchX"    # I
    .param p3, "touchY"    # I

    .prologue
    .line 1025
    const/4 v6, 0x1

    .line 1029
    .local v6, "needIncrease":Z
    move/from16 v1, p2

    .line 1031
    .local v1, "boundX":I
    move/from16 v2, p3

    .line 1033
    .local v2, "boundY":I
    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    .line 1035
    move v7, v1

    .line 1037
    .local v7, "nextX":I
    move/from16 v8, p3

    .line 1039
    .local v8, "nextY":I
    if-ltz v7, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    .line 1091
    .end local v7    # "nextX":I
    .end local v8    # "nextY":I
    :cond_0
    const/4 v6, 0x1

    .line 1093
    move/from16 v1, p2

    .line 1095
    move/from16 v2, p3

    .line 1097
    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    .line 1099
    move/from16 v7, p2

    .line 1101
    .restart local v7    # "nextX":I
    move v8, v2

    .line 1103
    .restart local v8    # "nextY":I
    if-ltz v7, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    .line 1155
    .end local v7    # "nextX":I
    .end local v8    # "nextY":I
    :cond_1
    add-int/lit8 v9, p2, 0xa

    .local v9, "x":I
    :goto_2
    move/from16 v0, p2

    if-lt v9, v0, :cond_14

    .line 1157
    add-int/lit8 v10, p3, -0xa

    .local v10, "y":I
    :goto_3
    move/from16 v0, p3

    if-gt v10, v0, :cond_13

    .line 1158
    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    if-ge v9, v11, :cond_2

    if-ltz v10, :cond_2

    .line 1159
    invoke-virtual {p0, v9, v10, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1157
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1057
    .end local v9    # "x":I
    .end local v10    # "y":I
    .restart local v7    # "nextX":I
    .restart local v8    # "nextY":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 1043
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    .line 1045
    move v2, v8

    .line 1047
    if-lez v2, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    .line 1051
    :cond_5
    const/4 v6, 0x0

    .line 1061
    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 1069
    .local v3, "distance":I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    .line 1071
    .local v5, "iter":I
    :goto_4
    if-eqz v6, :cond_7

    .line 1073
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-gt v4, v5, :cond_7

    .line 1074
    add-int v11, v2, v4

    iget v12, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_9

    .line 1033
    .end local v4    # "i":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1069
    .end local v5    # "iter":I
    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    .line 1077
    .restart local v4    # "i":I
    .restart local v5    # "iter":I
    :cond_9
    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    .line 1079
    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1073
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1121
    .end local v3    # "distance":I
    .end local v4    # "i":I
    .end local v5    # "iter":I
    :cond_b
    add-int/lit8 v7, v7, -0x1

    .line 1107
    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    .line 1109
    move v1, v7

    .line 1111
    if-lez v2, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    .line 1115
    :cond_d
    const/4 v6, 0x0

    .line 1127
    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 1133
    .restart local v3    # "distance":I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    .line 1135
    .restart local v5    # "iter":I
    :goto_6
    if-eqz v6, :cond_f

    .line 1137
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    if-gt v4, v5, :cond_f

    .line 1138
    sub-int v11, v1, v4

    if-gez v11, :cond_11

    .line 1097
    .end local v4    # "i":I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1133
    .end local v5    # "iter":I
    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    .line 1141
    .restart local v4    # "i":I
    .restart local v5    # "iter":I
    :cond_11
    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    .line 1143
    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1137
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1155
    .end local v3    # "distance":I
    .end local v4    # "i":I
    .end local v5    # "iter":I
    .end local v7    # "nextX":I
    .end local v8    # "nextY":I
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :cond_13
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 1165
    .end local v10    # "y":I
    :cond_14
    return-void
.end method

.method public increaseBR(III)V
    .locals 14
    .param p1, "currentIndex"    # I
    .param p2, "touchX"    # I
    .param p3, "touchY"    # I

    .prologue
    .line 1338
    const/4 v6, 0x1

    .line 1342
    .local v6, "needIncrease":Z
    move/from16 v1, p2

    .line 1344
    .local v1, "boundX":I
    move/from16 v2, p3

    .line 1346
    .local v2, "boundY":I
    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    .line 1348
    move v7, v1

    .line 1350
    .local v7, "nextX":I
    move/from16 v8, p3

    .line 1352
    .local v8, "nextY":I
    if-ltz v7, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    .line 1407
    .end local v7    # "nextX":I
    .end local v8    # "nextY":I
    :cond_0
    const/4 v6, 0x1

    .line 1409
    move/from16 v1, p2

    .line 1411
    move/from16 v2, p3

    .line 1413
    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    .line 1415
    move/from16 v7, p2

    .line 1417
    .restart local v7    # "nextX":I
    move v8, v2

    .line 1419
    .restart local v8    # "nextY":I
    if-ltz v7, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    .line 1471
    .end local v7    # "nextX":I
    .end local v8    # "nextY":I
    :cond_1
    add-int/lit8 v9, p2, -0xa

    .local v9, "x":I
    :goto_2
    move/from16 v0, p2

    if-gt v9, v0, :cond_14

    .line 1473
    add-int/lit8 v10, p3, -0xa

    .local v10, "y":I
    :goto_3
    move/from16 v0, p3

    if-gt v10, v0, :cond_13

    .line 1474
    if-ltz v9, :cond_2

    if-ltz v10, :cond_2

    .line 1475
    invoke-virtual {p0, v9, v10, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1473
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1370
    .end local v9    # "x":I
    .end local v10    # "y":I
    .restart local v7    # "nextX":I
    .restart local v8    # "nextY":I
    :cond_3
    add-int/lit8 v8, v8, 0x1

    .line 1356
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    .line 1358
    move v2, v8

    .line 1360
    if-lez v2, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    .line 1364
    :cond_5
    const/4 v6, 0x0

    .line 1374
    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 1382
    .local v3, "distance":I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    .line 1384
    .local v5, "iter":I
    :goto_4
    if-eqz v6, :cond_7

    .line 1386
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-gt v4, v5, :cond_7

    .line 1387
    add-int v11, v2, v4

    iget v12, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_9

    .line 1346
    .end local v4    # "i":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1382
    .end local v5    # "iter":I
    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    .line 1390
    .restart local v4    # "i":I
    .restart local v5    # "iter":I
    :cond_9
    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    .line 1392
    add-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1386
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1437
    .end local v3    # "distance":I
    .end local v4    # "i":I
    .end local v5    # "iter":I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 1423
    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    .line 1425
    move v1, v7

    .line 1427
    if-lez v2, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    .line 1431
    :cond_d
    const/4 v6, 0x0

    .line 1441
    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 1449
    .restart local v3    # "distance":I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    .line 1451
    .restart local v5    # "iter":I
    :goto_6
    if-eqz v6, :cond_f

    .line 1453
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    if-gt v4, v5, :cond_f

    .line 1454
    add-int v11, v1, v4

    iget v12, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_11

    .line 1413
    .end local v4    # "i":I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1449
    .end local v5    # "iter":I
    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    .line 1457
    .restart local v4    # "i":I
    .restart local v5    # "iter":I
    :cond_11
    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    .line 1459
    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1453
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1471
    .end local v3    # "distance":I
    .end local v4    # "i":I
    .end local v5    # "iter":I
    .end local v7    # "nextX":I
    .end local v8    # "nextY":I
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1481
    .end local v10    # "y":I
    :cond_14
    return-void
.end method

.method public increaseTL(III)V
    .locals 14
    .param p1, "currentIndex"    # I
    .param p2, "touchX"    # I
    .param p3, "touchY"    # I

    .prologue
    .line 867
    const/4 v6, 0x1

    .line 871
    .local v6, "needIncrease":Z
    move/from16 v1, p2

    .line 873
    .local v1, "boundX":I
    move/from16 v2, p3

    .line 875
    .local v2, "boundY":I
    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    .line 877
    move v7, v1

    .line 879
    .local v7, "nextX":I
    move/from16 v8, p3

    .line 881
    .local v8, "nextY":I
    if-ltz v7, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    .line 936
    .end local v7    # "nextX":I
    .end local v8    # "nextY":I
    :cond_0
    const/4 v6, 0x1

    .line 938
    move/from16 v1, p2

    .line 940
    move/from16 v2, p3

    .line 942
    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    .line 944
    move/from16 v7, p2

    .line 946
    .restart local v7    # "nextX":I
    move v8, v2

    .line 948
    .restart local v8    # "nextY":I
    if-ltz v7, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    .line 1000
    .end local v7    # "nextX":I
    .end local v8    # "nextY":I
    :cond_1
    add-int/lit8 v9, p2, 0xa

    .local v9, "x":I
    :goto_2
    move/from16 v0, p2

    if-lt v9, v0, :cond_14

    .line 1002
    add-int/lit8 v10, p3, 0xa

    .local v10, "y":I
    :goto_3
    move/from16 v0, p3

    if-lt v10, v0, :cond_13

    .line 1003
    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    if-ge v9, v11, :cond_2

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    if-ge v10, v11, :cond_2

    .line 1004
    invoke-virtual {p0, v9, v10, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1002
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 899
    .end local v9    # "x":I
    .end local v10    # "y":I
    .restart local v7    # "nextX":I
    .restart local v8    # "nextY":I
    :cond_3
    add-int/lit8 v8, v8, -0x1

    .line 885
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    .line 887
    move v2, v8

    .line 889
    if-lez v2, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    .line 893
    :cond_5
    const/4 v6, 0x0

    .line 903
    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 911
    .local v3, "distance":I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    .line 913
    .local v5, "iter":I
    :goto_4
    if-eqz v6, :cond_7

    .line 915
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-gt v4, v5, :cond_7

    .line 916
    sub-int v11, v2, v4

    if-gez v11, :cond_9

    .line 875
    .end local v4    # "i":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 911
    .end local v5    # "iter":I
    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    .line 919
    .restart local v4    # "i":I
    .restart local v5    # "iter":I
    :cond_9
    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    .line 921
    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 915
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 966
    .end local v3    # "distance":I
    .end local v4    # "i":I
    .end local v5    # "iter":I
    :cond_b
    add-int/lit8 v7, v7, -0x1

    .line 952
    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    .line 954
    move v1, v7

    .line 956
    if-lez v2, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    .line 960
    :cond_d
    const/4 v6, 0x0

    .line 970
    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 978
    .restart local v3    # "distance":I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    .line 980
    .restart local v5    # "iter":I
    :goto_6
    if-eqz v6, :cond_f

    .line 982
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    if-gt v4, v5, :cond_f

    .line 983
    sub-int v11, v1, v4

    if-gez v11, :cond_11

    .line 942
    .end local v4    # "i":I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 978
    .end local v5    # "iter":I
    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    .line 986
    .restart local v4    # "i":I
    .restart local v5    # "iter":I
    :cond_11
    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    .line 988
    sub-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 982
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1000
    .end local v3    # "distance":I
    .end local v4    # "i":I
    .end local v5    # "iter":I
    .end local v7    # "nextX":I
    .end local v8    # "nextY":I
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :cond_13
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_2

    .line 1010
    .end local v10    # "y":I
    :cond_14
    return-void
.end method

.method public increaseTR(III)V
    .locals 14
    .param p1, "currentIndex"    # I
    .param p2, "touchX"    # I
    .param p3, "touchY"    # I

    .prologue
    .line 1180
    const/4 v6, 0x1

    .line 1184
    .local v6, "needIncrease":Z
    move/from16 v1, p2

    .line 1186
    .local v1, "boundX":I
    move/from16 v2, p3

    .line 1188
    .local v2, "boundY":I
    add-int/lit8 v1, p2, -0xa

    :goto_0
    add-int/lit8 v11, p2, 0xa

    if-gt v1, v11, :cond_0

    .line 1190
    move v7, v1

    .line 1192
    .local v7, "nextX":I
    move/from16 v8, p3

    .line 1194
    .local v8, "nextY":I
    if-ltz v7, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_0

    if-ltz v8, :cond_0

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_4

    .line 1249
    .end local v7    # "nextX":I
    .end local v8    # "nextY":I
    :cond_0
    const/4 v6, 0x1

    .line 1251
    move/from16 v1, p2

    .line 1253
    move/from16 v2, p3

    .line 1255
    add-int/lit8 v2, p3, -0xa

    :goto_1
    add-int/lit8 v11, p3, 0xa

    if-gt v2, v11, :cond_1

    .line 1257
    move/from16 v7, p2

    .line 1259
    .restart local v7    # "nextX":I
    move v8, v2

    .line 1261
    .restart local v8    # "nextY":I
    if-ltz v7, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-gt v7, v11, :cond_1

    if-ltz v8, :cond_1

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-le v8, v11, :cond_c

    .line 1313
    .end local v7    # "nextX":I
    .end local v8    # "nextY":I
    :cond_1
    add-int/lit8 v9, p2, -0xa

    .local v9, "x":I
    :goto_2
    move/from16 v0, p2

    if-gt v9, v0, :cond_14

    .line 1315
    add-int/lit8 v10, p3, 0xa

    .local v10, "y":I
    :goto_3
    move/from16 v0, p3

    if-lt v10, v0, :cond_13

    .line 1316
    if-ltz v9, :cond_2

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    if-ge v10, v11, :cond_2

    .line 1317
    invoke-virtual {p0, v9, v10, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1315
    :cond_2
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .line 1212
    .end local v9    # "x":I
    .end local v10    # "y":I
    .restart local v7    # "nextX":I
    .restart local v8    # "nextY":I
    :cond_3
    add-int/lit8 v8, v8, -0x1

    .line 1198
    :cond_4
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_6

    .line 1200
    move v2, v8

    .line 1202
    if-lez v2, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    if-lez v1, :cond_5

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_3

    .line 1206
    :cond_5
    const/4 v6, 0x0

    .line 1216
    :cond_6
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 1224
    .local v3, "distance":I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_8

    const/4 v5, 0x0

    .line 1226
    .local v5, "iter":I
    :goto_4
    if-eqz v6, :cond_7

    .line 1228
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_5
    if-gt v4, v5, :cond_7

    .line 1229
    sub-int v11, v2, v4

    if-gez v11, :cond_9

    .line 1188
    .end local v4    # "i":I
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1224
    .end local v5    # "iter":I
    :cond_8
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_4

    .line 1232
    .restart local v4    # "i":I
    .restart local v5    # "iter":I
    :cond_9
    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_a

    .line 1234
    sub-int v11, v2, v4

    invoke-virtual {p0, v1, v11, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1228
    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1279
    .end local v3    # "distance":I
    .end local v4    # "i":I
    .end local v5    # "iter":I
    :cond_b
    add-int/lit8 v7, v7, 0x1

    .line 1265
    :cond_c
    invoke-virtual {p0, v7, v8}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v11

    if-ne v11, p1, :cond_e

    .line 1267
    move v1, v7

    .line 1269
    if-lez v2, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_d

    if-lez v1, :cond_d

    iget v11, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v11, v11, -0x1

    if-lt v1, v11, :cond_b

    .line 1273
    :cond_d
    const/4 v6, 0x0

    .line 1283
    :cond_e
    sub-int v11, p3, v2

    sub-int v12, p3, v2

    mul-int/2addr v11, v12

    sub-int v12, p2, v1

    sub-int v13, p2, v1

    mul-int/2addr v12, v13

    add-int/2addr v11, v12

    int-to-double v11, v11

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    double-to-int v3, v11

    .line 1291
    .restart local v3    # "distance":I
    rsub-int/lit8 v11, v3, 0xa

    if-gez v11, :cond_10

    const/4 v5, 0x0

    .line 1293
    .restart local v5    # "iter":I
    :goto_6
    if-eqz v6, :cond_f

    .line 1295
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_7
    if-gt v4, v5, :cond_f

    .line 1296
    add-int v11, v1, v4

    iget v12, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v12, v12, -0x1

    if-le v11, v12, :cond_11

    .line 1255
    .end local v4    # "i":I
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .line 1291
    .end local v5    # "iter":I
    :cond_10
    rsub-int/lit8 v5, v3, 0xa

    goto :goto_6

    .line 1299
    .restart local v4    # "i":I
    .restart local v5    # "iter":I
    :cond_11
    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v11

    if-nez v11, :cond_12

    .line 1301
    add-int v11, v1, v4

    invoke-virtual {p0, v11, v2, p1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1295
    :cond_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 1313
    .end local v3    # "distance":I
    .end local v4    # "i":I
    .end local v5    # "iter":I
    .end local v7    # "nextX":I
    .end local v8    # "nextY":I
    .restart local v9    # "x":I
    .restart local v10    # "y":I
    :cond_13
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1323
    .end local v10    # "y":I
    :cond_14
    return-void
.end method

.method public initialize(Lcom/diotek/ime/framework/view/DefaultKeyboard;IIIIIIZI)Z
    .locals 20
    .param p1, "keyboard"    # Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .param p2, "windowWidth"    # I
    .param p3, "language"    # I
    .param p4, "mode"    # I
    .param p5, "layoutType"    # I
    .param p6, "keyboardWidth"    # I
    .param p7, "keyboardHeight"    # I
    .param p8, "orientation"    # Z
    .param p9, "nKeys"    # I

    .prologue
    .line 576
    const/4 v5, 0x0

    new-array v5, v5, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 578
    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    invoke-interface {v5, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/diotek/ime/framework/view/Keyboard$Key;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    .line 580
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v14, v5

    .line 582
    .local v14, "length":I
    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    .line 584
    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    .line 586
    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isLandscape()Z

    move-result v5

    move/from16 v0, p8

    if-ne v5, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v5

    move/from16 v0, p6

    if-ne v5, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v5

    move/from16 v0, p7

    if-ne v5, v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, p9

    if-ne v5, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    .line 596
    :cond_0
    const/4 v5, 0x0

    check-cast v5, [[I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 598
    const/4 v5, 0x0

    .line 839
    :goto_0
    return v5

    .line 602
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v5, v5

    new-array v5, v5, [Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    .line 604
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    array-length v5, v5

    if-ge v12, v5, :cond_3

    .line 605
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v5, v5, v12

    if-nez v5, :cond_2

    .line 606
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    new-instance v6, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;-><init>(Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;)V

    aput-object v6, v5, v12

    .line 608
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v5, v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v12

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v7, v7, v12

    iget v7, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, v5, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;->x:I

    .line 610
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKeyCentre:[Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;

    aget-object v5, v5, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v12

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v7, v7, v12

    iget v7, v7, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, v5, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure$TCentre;->y:I

    .line 604
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 620
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isLandscape()Z

    move-result v5

    move/from16 v0, p8

    if-ne v5, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v5

    move/from16 v0, p6

    if-ne v5, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v5

    move/from16 v0, p7

    if-ne v5, v0, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, p9

    if-ne v5, v0, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_5

    .line 628
    :cond_4
    const/4 v5, 0x0

    check-cast v5, [[I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 630
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 634
    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 636
    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isLandscape()Z

    move-result v5

    move/from16 v0, p8

    if-ne v5, v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v5

    move/from16 v0, p6

    if-ne v5, v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v5

    move/from16 v0, p7

    if-ne v5, v0, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, p9

    if-ne v5, v0, :cond_6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_7

    .line 644
    :cond_6
    const/4 v5, 0x0

    check-cast v5, [[I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 646
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_7
    move-object/from16 v3, p0

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p8

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p1

    move/from16 v11, p9

    .line 650
    invoke-virtual/range {v3 .. v11}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->readGrid(IIIZIILcom/diotek/ime/framework/view/DefaultKeyboard;I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 660
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 673
    :cond_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    if-nez v5, :cond_9

    .line 674
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 704
    :cond_9
    const/4 v13, 0x1

    .local v13, "key":I
    :goto_2
    if-ge v13, v14, :cond_f

    .line 706
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v13

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    add-int v16, v5, v6

    .line 708
    .local v16, "limity":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v13

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int v15, v5, v6

    .line 710
    .local v15, "limitx":I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move/from16 v18, v0

    .local v18, "n":I
    :goto_3
    move/from16 v0, v18

    move/from16 v1, v16

    if-gt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    move/from16 v0, v18

    if-ge v0, v5, :cond_e

    .line 712
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v0, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move/from16 v17, v0

    .local v17, "m":I
    :goto_4
    move/from16 v0, v17

    if-gt v0, v15, :cond_d

    move-object/from16 v0, p0

    iget v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    move/from16 v0, v17

    if-ge v0, v5, :cond_d

    .line 714
    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isLandscape()Z

    move-result v5

    move/from16 v0, p8

    if-ne v5, v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v5

    move/from16 v0, p6

    if-ne v5, v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v5

    move/from16 v0, p7

    if-ne v5, v0, :cond_a

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, p9

    if-ne v5, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_b

    .line 722
    :cond_a
    const/4 v5, 0x0

    check-cast v5, [[I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 724
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 730
    :cond_b
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setBaseIndex(III)V

    .line 732
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v13}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 737
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    add-int/lit8 v5, v5, 0x5

    move/from16 v0, v17

    if-le v0, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v13

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x5

    move/from16 v0, v17

    if-ge v0, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    add-int/lit8 v5, v5, 0x5

    move/from16 v0, v18

    if-le v0, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v13

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v13

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x5

    move/from16 v0, v18

    if-ge v0, v5, :cond_c

    .line 745
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    .line 712
    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_4

    .line 747
    :cond_c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    goto :goto_5

    .line 710
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_3

    .line 704
    .end local v17    # "m":I
    :cond_e
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 761
    .end local v15    # "limitx":I
    .end local v16    # "limity":I
    .end local v18    # "n":I
    :cond_f
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    if-ge v4, v5, :cond_17

    .line 763
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_7
    move-object/from16 v0, p0

    iget v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    if-ge v3, v5, :cond_16

    .line 765
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-nez v5, :cond_12

    .line 767
    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isLandscape()Z

    move-result v5

    move/from16 v0, p8

    if-ne v5, v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v5

    move/from16 v0, p6

    if-ne v5, v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v5

    move/from16 v0, p7

    if-ne v5, v0, :cond_10

    invoke-virtual/range {p1 .. p1}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v0, p9

    if-ne v5, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_11

    .line 775
    :cond_10
    const/4 v5, 0x0

    check-cast v5, [[I

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    .line 777
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 783
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->IS_KORMODE:Z

    if-eqz v5, :cond_13

    .line 785
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->manager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v5}, Lcom/diotek/ime/framework/common/InputManager;->isOrientationLandscape()Z

    move-result v8

    move-object/from16 v5, p1

    move/from16 v6, p6

    invoke-static/range {v3 .. v8}, Lcom/diotek/ime/framework/util/Utils;->getTheNearestKeyIndexKor(IILcom/diotek/ime/framework/view/DefaultKeyboard;IZZ)I

    move-result v19

    .line 807
    .local v19, "temp":I
    :goto_8
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v3, v4, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setBaseIndex(III)V

    .line 809
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v3, v4, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 813
    const/4 v5, -0x1

    move/from16 v0, v19

    if-ne v0, v5, :cond_14

    .line 815
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    .line 763
    .end local v19    # "temp":I
    :cond_12
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 801
    :cond_13
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p6

    invoke-static {v3, v4, v0, v1, v5}, Lcom/diotek/ime/framework/util/Utils;->getTheNearestKeyIndex(IILcom/diotek/ime/framework/view/Keyboard;IZ)I

    move-result v19

    .restart local v19    # "temp":I
    goto :goto_8

    .line 819
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v19

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    add-int/lit8 v5, v5, 0x5

    if-le v3, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v19

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->x:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v19

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->width:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x5

    if-ge v3, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v19

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    add-int/lit8 v5, v5, 0x5

    if-le v4, v5, :cond_15

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v5, v5, v19

    iget v5, v5, Lcom/diotek/ime/framework/view/Keyboard$Key;->y:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->keys:[Lcom/diotek/ime/framework/view/Keyboard$Key;

    aget-object v6, v6, v19

    iget v6, v6, Lcom/diotek/ime/framework/view/Keyboard$Key;->height:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x5

    if-ge v4, v5, :cond_15

    .line 827
    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    goto :goto_9

    .line 829
    :cond_15
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setFixed(IIZ)V

    goto :goto_9

    .line 761
    .end local v19    # "temp":I
    :cond_16
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_6

    .line 839
    .end local v3    # "j":I
    :cond_17
    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public isFixed(II)Z
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 280
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v0, v0, p2

    const/high16 v1, 0xf000000

    and-int/2addr v0, v1

    const/high16 v1, 0x1000000

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readGrid(IIIZIILcom/diotek/ime/framework/view/DefaultKeyboard;I)Z
    .locals 17
    .param p1, "language"    # I
    .param p2, "mode"    # I
    .param p3, "layoutType"    # I
    .param p4, "isLandscape"    # Z
    .param p5, "keyboardWidth"    # I
    .param p6, "keyboardHeight"    # I
    .param p7, "keyboard"    # Lcom/diotek/ime/framework/view/DefaultKeyboard;
    .param p8, "nKeys"    # I

    .prologue
    .line 433
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "grid_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p5

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p6

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p8

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".db"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 439
    .local v1, "FILENAME":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->manager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v14

    const-string v15, "grids"

    invoke-direct {v6, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 443
    .local v6, "gridDirectory":Ljava/io/File;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v6, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 445
    .local v3, "file":Ljava/io/File;
    const/4 v10, 0x0

    .line 446
    .local v10, "returnvalue":Z
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_1

    .line 447
    const/4 v14, 0x0

    .line 544
    :cond_0
    :goto_0
    return v14

    .line 449
    :cond_1
    const/4 v4, 0x0

    .line 453
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .local v5, "fis":Ljava/io/FileInputStream;
    const/4 v11, -0x1

    .local v11, "size":I
    const/4 v7, 0x0

    .local v7, "i":I
    const/4 v8, 0x0

    .local v8, "j":I
    const/4 v13, 0x0

    .line 457
    .local v13, "value":I
    mul-int v14, p5, p6

    mul-int/lit8 v14, v14, 0x8

    :try_start_1
    new-array v12, v14, [B

    .line 461
    .local v12, "tempbuffer":[B
    :cond_2
    invoke-virtual {v5, v12}, Ljava/io/InputStream;->read([B)I

    move-result v11

    .line 463
    const/4 v9, 0x0

    .local v9, "k":I
    :goto_1
    if-ge v9, v11, :cond_5

    .line 465
    invoke-virtual/range {p7 .. p7}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->isLandscape()Z

    move-result v14

    move/from16 v0, p4

    if-ne v14, v0, :cond_3

    invoke-virtual/range {p7 .. p7}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getMinWidth()I

    move-result v14

    move/from16 v0, p5

    if-ne v14, v0, :cond_3

    invoke-virtual/range {p7 .. p7}, Lcom/diotek/ime/framework/view/DefaultKeyboard;->getHeight()I

    move-result v14

    move/from16 v0, p6

    if-ne v14, v0, :cond_3

    invoke-virtual/range {p7 .. p7}, Lcom/diotek/ime/framework/view/Keyboard;->getKeys()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move/from16 v0, p8

    if-ne v14, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->initGridCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v14}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    const/4 v15, 0x1

    if-le v14, v15, :cond_4

    .line 473
    :cond_3
    const/4 v14, 0x0

    check-cast v14, [[I

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 475
    const/4 v14, 0x0

    .line 528
    if-eqz v5, :cond_0

    .line 532
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 534
    :catch_0
    move-exception v2

    .line 536
    .local v2, "e":Ljava/io/IOException;
    sget-object v15, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v16, "Error in closing the stream"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 479
    .end local v2    # "e":Ljava/io/IOException;
    :cond_4
    :try_start_3
    aget-byte v14, v12, v9

    const/16 v15, 0xa

    if-ne v14, v15, :cond_9

    .line 481
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v14, v14, v7

    aput v13, v14, v8
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 483
    const/4 v13, 0x0

    .line 485
    add-int/lit8 v9, v9, 0x1

    .line 487
    add-int/lit8 v14, p5, -0x1

    if-ne v7, v14, :cond_8

    .line 489
    add-int/lit8 v8, v8, 0x1

    .line 491
    const/4 v7, 0x0

    .line 495
    :goto_2
    if-lt v9, v11, :cond_9

    .line 504
    :cond_5
    const/4 v14, -0x1

    if-ne v11, v14, :cond_2

    .line 506
    const/4 v10, 0x1

    .line 528
    if-eqz v5, :cond_6

    .line 532
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_6
    :goto_3
    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "k":I
    .end local v11    # "size":I
    .end local v12    # "tempbuffer":[B
    .end local v13    # "value":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :cond_7
    :goto_4
    move v14, v10

    .line 544
    goto/16 :goto_0

    .line 493
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v9    # "k":I
    .restart local v11    # "size":I
    .restart local v12    # "tempbuffer":[B
    .restart local v13    # "value":I
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 500
    :cond_9
    mul-int/lit8 v14, v13, 0xa

    :try_start_5
    aget-byte v15, v12, v9
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    add-int/lit8 v15, v15, -0x30

    add-int v13, v14, v15

    .line 463
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 508
    .end local v5    # "fis":Ljava/io/FileInputStream;
    .end local v7    # "i":I
    .end local v8    # "j":I
    .end local v9    # "k":I
    .end local v11    # "size":I
    .end local v12    # "tempbuffer":[B
    .end local v13    # "value":I
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v2

    .line 510
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    sget-object v14, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in Function readGrid()"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 512
    const/4 v10, 0x0

    .line 528
    if-eqz v4, :cond_7

    .line 532
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    .line 534
    :catch_2
    move-exception v2

    .line 536
    sget-object v14, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in closing the stream"

    :goto_6
    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 514
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 516
    .local v2, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_7
    :try_start_8
    sget-object v14, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "!@ArrayIndexOutOfBoundsException: File corrupted, deleting now."

    invoke-static {v14, v15, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_a

    .line 522
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 524
    :cond_a
    const/4 v10, 0x0

    .line 528
    if-eqz v4, :cond_7

    .line 532
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_4

    .line 534
    :catch_4
    move-exception v2

    .line 536
    .local v2, "e":Ljava/io/IOException;
    sget-object v14, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in closing the stream"

    goto :goto_6

    .line 528
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v14

    :goto_8
    if-eqz v4, :cond_b

    .line 532
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5

    .line 528
    :cond_b
    :goto_9
    throw v14

    .line 534
    :catch_5
    move-exception v2

    .line 536
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v15, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v16, "Error in closing the stream"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 534
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "i":I
    .restart local v8    # "j":I
    .restart local v9    # "k":I
    .restart local v11    # "size":I
    .restart local v12    # "tempbuffer":[B
    .restart local v13    # "value":I
    :catch_6
    move-exception v2

    .line 536
    .restart local v2    # "e":Ljava/io/IOException;
    sget-object v14, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->TAG:Ljava/lang/String;

    const-string v15, "Error in closing the stream"

    invoke-static {v14, v15, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 528
    .end local v2    # "e":Ljava/io/IOException;
    .end local v9    # "k":I
    .end local v12    # "tempbuffer":[B
    :catchall_1
    move-exception v14

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_8

    .line 514
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_7

    .line 508
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "fis":Ljava/io/FileInputStream;
    :catch_8
    move-exception v2

    move-object v4, v5

    .end local v5    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method public release(III)V
    .locals 6
    .param p1, "prevTouchX"    # I
    .param p2, "prevTouchY"    # I
    .param p3, "releaseTo"    # I

    .prologue
    .line 1564
    invoke-virtual {p0, p1, p2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v2

    .line 1567
    .local v2, "releaseFrom":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    .line 1674
    :cond_0
    :goto_0
    return-void

    .line 1574
    :cond_1
    move v3, p1

    .local v3, "x":I
    move v0, p1

    .local v0, "px":I
    move v4, p2

    .local v4, "y":I
    move v1, p2

    .line 1583
    .local v1, "py":I
    :cond_2
    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_3

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_3

    .line 1585
    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1587
    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 1590
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1595
    :cond_4
    move v3, v0

    .line 1599
    :cond_5
    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_6

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_6

    .line 1601
    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1603
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 1606
    iget v5, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v5, v5, -0x1

    if-gt v3, v5, :cond_7

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1611
    :cond_7
    add-int/lit8 v1, v1, -0x1

    .line 1613
    move v3, v0

    .line 1615
    move v4, v1

    .line 1616
    if-ltz v4, :cond_8

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1625
    :cond_8
    move v3, p1

    move v0, p1

    .line 1627
    add-int/lit8 v4, p2, 0x1

    move v1, v4

    .line 1633
    :cond_9
    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_a

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_a

    .line 1635
    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1637
    :cond_a
    add-int/lit8 v3, v3, -0x1

    .line 1640
    if-ltz v3, :cond_b

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1645
    :cond_b
    move v3, v0

    .line 1649
    :cond_c
    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v5

    if-ne v5, v2, :cond_d

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    if-ne v5, p3, :cond_d

    .line 1651
    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    invoke-virtual {p0, v3, v4, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->setKeyIndex(III)V

    .line 1653
    :cond_d
    add-int/lit8 v3, v3, 0x1

    .line 1656
    iget v5, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v5, v5, -0x1

    if-gt v3, v5, :cond_e

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1661
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 1663
    move v3, v0

    .line 1665
    move v4, v1

    .line 1666
    iget v5, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v5, v5, -0x1

    if-gt v4, v5, :cond_0

    invoke-virtual {p0, v3, v4}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v5

    if-eqz v5, :cond_9

    goto/16 :goto_0
.end method

.method public removeAllDB()Z
    .locals 10

    .prologue
    .line 1682
    const/4 v2, 0x1

    .line 1688
    .local v2, "bRetVal":Z
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->manager:Lcom/diotek/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/diotek/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string v9, "grids"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1690
    .local v5, "gridDirectory":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1692
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 1696
    .local v0, "allFiles":[Ljava/io/File;
    move-object v1, v0

    .local v1, "arr$":[Ljava/io/File;
    array-length v7, v1

    .local v7, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v3, v1, v6

    .line 1698
    .local v3, "delAllDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1696
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1704
    .end local v0    # "allFiles":[Ljava/io/File;
    .end local v1    # "arr$":[Ljava/io/File;
    .end local v3    # "delAllDir":Ljava/io/File;
    .end local v5    # "gridDirectory":Ljava/io/File;
    .end local v6    # "i$":I
    .end local v7    # "len$":I
    :catch_0
    move-exception v4

    .line 1706
    .local v4, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 1708
    const-string v8, "SamsungIME"

    const-string v9, "removeAllDB is failed"

    invoke-static {v8, v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1714
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    return v2
.end method

.method public restore(II)V
    .locals 7
    .param p1, "prevTouchX"    # I
    .param p2, "prevTouchY"    # I

    .prologue
    .line 1501
    invoke-virtual {p0, p1, p2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v4

    .line 1504
    .local v4, "releaseFrom":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 1555
    :cond_0
    return-void

    .line 1509
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    .line 1510
    .local v5, "releaseTo":I
    invoke-virtual {p0, p1, p2}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->isFixed(II)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1517
    if-eq v4, v5, :cond_2

    .line 1519
    invoke-virtual {p0, p1, p2, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->release(III)V

    .line 1527
    :cond_2
    add-int/lit8 v2, p1, 0xa

    .local v2, "limiti":I
    add-int/lit8 v3, p2, 0xa

    .line 1529
    .local v3, "limitj":I
    add-int/lit8 v1, p2, -0xa

    .local v1, "j":I
    :goto_0
    if-gt v1, v3, :cond_0

    .line 1531
    add-int/lit8 v0, p1, -0xa

    .local v0, "i":I
    :goto_1
    if-gt v0, v2, :cond_4

    .line 1533
    if-ltz v0, :cond_3

    if-ltz v1, :cond_3

    iget v6, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBWidth:I

    add-int/lit8 v6, v6, -0x1

    if-gt v0, v6, :cond_3

    iget v6, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->mKBHeight:I

    add-int/lit8 v6, v6, -0x1

    if-gt v1, v6, :cond_3

    .line 1537
    invoke-virtual {p0, v0, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getKeyIndex(II)I

    move-result v6

    if-ne v6, v4, :cond_3

    invoke-virtual {p0, v0, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v6

    if-eq v6, v4, :cond_3

    .line 1541
    invoke-virtual {p0, v0, v1}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->getBaseIndex(II)I

    move-result v5

    .line 1543
    invoke-virtual {p0, p1, p2, v5}, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->release(III)V

    .line 1531
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1529
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBaseIndex(III)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # I

    .prologue
    .line 260
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    and-int/lit8 v1, v1, 0x0

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    aput v1, v0, p2

    .line 271
    :goto_0
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, -0xfff001

    and-int/2addr v1, v2

    aput v1, v0, p2

    .line 265
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    shl-int/lit8 v2, p3, 0xc

    or-int/2addr v1, v2

    aput v1, v0, p2

    .line 267
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, 0xfffffff

    and-int/2addr v1, v2

    aput v1, v0, p2

    goto :goto_0
.end method

.method public setFixed(IIZ)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, -0xf000001

    and-int/2addr v1, v2

    aput v1, v0, p2

    .line 311
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v0, p1

    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    aget v2, v0, p2

    if-eqz p3, :cond_0

    const/high16 v0, 0x1000000

    :goto_0
    or-int/2addr v0, v2

    aput v0, v1, p2

    .line 313
    return-void

    .line 311
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyIndex(III)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "value"    # I

    .prologue
    .line 232
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    and-int/lit8 v1, v1, 0x0

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    aput v1, v0, p2

    .line 243
    :goto_0
    return-void

    .line 235
    :cond_0
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    and-int/lit16 v1, v1, -0x1000

    aput v1, v0, p2

    .line 237
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    or-int/2addr v1, p3

    aput v1, v0, p2

    .line 239
    iget-object v0, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->grid:[[I

    aget-object v1, v1, p1

    aget v1, v1, p2

    const v2, 0xfffffff

    and-int/2addr v1, v2

    aput v1, v0, p2

    goto :goto_0
.end method

.method public setParameter(ZZ)V
    .locals 0
    .param p1, "isHD"    # Z
    .param p2, "isKorMod"    # Z

    .prologue
    .line 553
    iput-boolean p1, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->IS_HD:Z

    .line 555
    iput-boolean p2, p0, Lcom/siso/ime/framework/touchmodal/TouchModalDataStructure;->IS_KORMODE:Z

    .line 557
    return-void
.end method
