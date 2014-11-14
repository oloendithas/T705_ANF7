.class public Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;
.super Ljava/lang/Object;
.source "ClipboardDataBitmapUrl.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downloadSimpleBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 15
    .param p0, "urlname"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v8, 0x1

    const/4 v11, -0x1

    .line 63
    const/4 v6, 0x0

    .line 64
    .local v6, "url":Ljava/net/URL;
    const/4 v0, 0x0

    .line 65
    .local v0, "Result":Landroid/graphics/Bitmap;
    const/4 v5, 0x2

    .line 67
    .local v5, "sampleSize":I
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 68
    .local v2, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 71
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 75
    :try_start_e
    new-instance v7, Ljava/net/URL;

    invoke-direct {v7, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_13} :catch_61
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_13} :catch_a0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_e .. :try_end_13} :catch_e0

    .line 77
    .end local v6    # "url":Ljava/net/URL;
    .local v7, "url":Ljava/net/URL;
    :try_start_13
    invoke-virtual {v7}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 78
    .local v3, "connection":Ljava/net/URLConnection;
    const/16 v8, 0x7d0

    invoke-virtual {v3, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 79
    const/16 v8, 0xbb8

    invoke-virtual {v3, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 82
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_29
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_29} :catch_214
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_29} :catch_210
    .catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_29} :catch_20c

    move-result-object v0

    move-object v6, v7

    .line 100
    .end local v3    # "connection":Ljava/net/URLConnection;
    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    :goto_2b
    if-eqz v2, :cond_31

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v8, v11, :cond_35

    :cond_31
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gt v8, v11, :cond_120

    .line 101
    :cond_35
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_5f

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Return null because received bitmap size is invalid. bitmapOption.outWidth :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", bitmapOption.outHeight :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5f
    move-object v1, v0

    .line 136
    .end local v0    # "Result":Landroid/graphics/Bitmap;
    .local v1, "Result":Landroid/graphics/Bitmap;
    :goto_60
    return-object v1

    .line 85
    .end local v1    # "Result":Landroid/graphics/Bitmap;
    .restart local v0    # "Result":Landroid/graphics/Bitmap;
    :catch_61
    move-exception v4

    .line 86
    .local v4, "e":Ljava/net/MalformedURLException;
    :goto_62
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_82

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MalformedURLException1 /  Error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_82
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_9e

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MalformedURLException1 Url-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_9e
    const/4 v0, 0x0

    .line 98
    goto :goto_2b

    .line 89
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :catch_a0
    move-exception v4

    .line 90
    .local v4, "e":Ljava/io/IOException;
    :goto_a1
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_c1

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException1 / Error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_c1
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_dd

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException1 Url-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :cond_dd
    const/4 v0, 0x0

    move-object v1, v0

    .line 93
    .end local v0    # "Result":Landroid/graphics/Bitmap;
    .restart local v1    # "Result":Landroid/graphics/Bitmap;
    goto :goto_60

    .line 94
    .end local v1    # "Result":Landroid/graphics/Bitmap;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "Result":Landroid/graphics/Bitmap;
    :catch_e0
    move-exception v4

    .line 95
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    :goto_e1
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_101

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OutOfMemoryError1 / Error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_101
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_11d

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OutOfMemoryError1 Url-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    :cond_11d
    const/4 v0, 0x0

    goto/16 :goto_2b

    .line 105
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    :cond_120
    :goto_120
    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v8, v5

    if-lt v8, p1, :cond_12d

    iget v8, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v8, v5

    if-lt v8, p2, :cond_12d

    .line 107
    add-int/lit8 v5, v5, 0x1

    goto :goto_120

    .line 109
    :cond_12d
    add-int/lit8 v5, v5, -0x1

    .line 111
    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 114
    const/4 v8, 0x0

    :try_start_132
    iput-boolean v8, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 117
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 118
    .restart local v3    # "connection":Ljava/net/URLConnection;
    const/16 v8, 0x7d0

    invoke-virtual {v3, v8}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 119
    const/16 v8, 0xbb8

    invoke-virtual {v3, v8}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 121
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_14a
    .catch Ljava/net/MalformedURLException; {:try_start_132 .. :try_end_14a} :catch_14e
    .catch Ljava/io/IOException; {:try_start_132 .. :try_end_14a} :catch_18d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_132 .. :try_end_14a} :catch_1cc

    move-result-object v0

    .end local v3    # "connection":Ljava/net/URLConnection;
    :goto_14b
    move-object v1, v0

    .line 136
    .end local v0    # "Result":Landroid/graphics/Bitmap;
    .restart local v1    # "Result":Landroid/graphics/Bitmap;
    goto/16 :goto_60

    .line 122
    .end local v1    # "Result":Landroid/graphics/Bitmap;
    .restart local v0    # "Result":Landroid/graphics/Bitmap;
    :catch_14e
    move-exception v4

    .line 123
    .local v4, "e":Ljava/net/MalformedURLException;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_16f

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MalformedURLException2 /  Error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    :cond_16f
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_18b

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MalformedURLException2 Url-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_18b
    const/4 v0, 0x0

    .line 134
    goto :goto_14b

    .line 126
    .end local v4    # "e":Ljava/net/MalformedURLException;
    :catch_18d
    move-exception v4

    .line 127
    .local v4, "e":Ljava/io/IOException;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_1ae

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException2 / Error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1ae
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_1ca

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "IOException2 Url-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_1ca
    const/4 v0, 0x0

    .line 134
    goto :goto_14b

    .line 130
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1cc
    move-exception v4

    .line 131
    .local v4, "e":Ljava/lang/OutOfMemoryError;
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v8, :cond_1ed

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OutOfMemoryError2 / Error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :cond_1ed
    sget-boolean v8, Landroid/sec/clipboard/data/ClipboardDefine;->INFO_DEBUG:Z

    if-eqz v8, :cond_209

    const-string v8, "ClipboardServiceEx"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "OutOfMemoryError2 Url-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/secutil/Log;->secW(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_209
    const/4 v0, 0x0

    goto/16 :goto_14b

    .line 94
    .end local v4    # "e":Ljava/lang/OutOfMemoryError;
    .end local v6    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_20c
    move-exception v4

    move-object v6, v7

    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    goto/16 :goto_e1

    .line 89
    .end local v6    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_210
    move-exception v4

    move-object v6, v7

    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    goto/16 :goto_a1

    .line 85
    .end local v6    # "url":Ljava/net/URL;
    .restart local v7    # "url":Ljava/net/URL;
    :catch_214
    move-exception v4

    move-object v6, v7

    .end local v7    # "url":Ljava/net/URL;
    .restart local v6    # "url":Ljava/net/URL;
    goto/16 :goto_62
.end method

.method private static findImageDegree(Landroid/content/ContentResolver;Landroid/net/Uri;)I
    .registers 16
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v13, -0x1

    .line 233
    const/4 v11, -0x1

    .line 234
    .local v11, "orientation":I
    const/4 v6, 0x0

    .line 236
    .local v6, "_data":Ljava/lang/String;
    const-string v0, "content"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 237
    const/4 v7, 0x0

    .line 240
    .local v7, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    :try_start_16
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 241
    if-eqz v7, :cond_3f

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 243
    const-string v0, "_data"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 244
    .local v8, "columnIdx":I
    if-eq v8, v13, :cond_2e

    .line 245
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 249
    :cond_2e
    const-string/jumbo v0, "orientation"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I
    :try_end_34
    .catch Landroid/database/SQLException; {:try_start_16 .. :try_end_34} :catch_68
    .catchall {:try_start_16 .. :try_end_34} :catchall_88

    move-result v8

    .line 250
    if-eq v8, v13, :cond_3f

    .line 252
    :try_start_37
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_3e} :catch_4a
    .catch Landroid/database/SQLException; {:try_start_37 .. :try_end_3e} :catch_68
    .catchall {:try_start_37 .. :try_end_3e} :catchall_88

    move-result v11

    .line 260
    .end local v8    # "columnIdx":I
    :cond_3f
    :goto_3f
    if-eqz v7, :cond_44

    .line 261
    :goto_41
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 268
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_44
    :goto_44
    if-ne v11, v13, :cond_49

    .line 269
    if-nez v6, :cond_a0

    .line 270
    const/4 v11, 0x0

    .line 280
    :cond_49
    :goto_49
    return v11

    .line 253
    .restart local v7    # "c":Landroid/database/Cursor;
    .restart local v8    # "columnIdx":I
    :catch_4a
    move-exception v10

    .line 254
    .local v10, "nfe":Ljava/lang/NumberFormatException;
    :try_start_4b
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_3f

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception arised during Integer.parseInt(c.getString(columnIdx));"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_67
    .catch Landroid/database/SQLException; {:try_start_4b .. :try_end_67} :catch_68
    .catchall {:try_start_4b .. :try_end_67} :catchall_88

    goto :goto_3f

    .line 257
    .end local v8    # "columnIdx":I
    .end local v10    # "nfe":Ljava/lang/NumberFormatException;
    :catch_68
    move-exception v12

    .line 258
    .local v12, "sqle":Landroid/database/SQLException;
    :try_start_69
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_85

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception arised during query."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_85
    .catchall {:try_start_69 .. :try_end_85} :catchall_88

    .line 260
    :cond_85
    if-eqz v7, :cond_44

    goto :goto_41

    .end local v12    # "sqle":Landroid/database/SQLException;
    :catchall_88
    move-exception v0

    if-eqz v7, :cond_8e

    .line 261
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 260
    :cond_8e
    throw v0

    .line 264
    .end local v7    # "c":Landroid/database/Cursor;
    :cond_8f
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 265
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    goto :goto_44

    .line 273
    :cond_a0
    :try_start_a0
    invoke-static {v6}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->getExifOrientation(Ljava/lang/String;)I
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_a5

    move-result v11

    goto :goto_49

    .line 274
    :catch_a5
    move-exception v9

    .line 275
    .local v9, "e":Ljava/lang/Exception;
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_c2

    const-string v0, "ClipboardServiceEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception arised during query."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :cond_c2
    const/4 v11, 0x0

    goto :goto_49
.end method

.method private static getExifOrientation(Ljava/lang/String;)I
    .registers 9
    .param p0, "filepath"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "degree":I
    const/4 v2, 0x0

    .line 287
    .local v2, "exif":Landroid/media/ExifInterface;
    :try_start_3
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_17

    .end local v2    # "exif":Landroid/media/ExifInterface;
    .local v3, "exif":Landroid/media/ExifInterface;
    move-object v2, v3

    .line 291
    .end local v3    # "exif":Landroid/media/ExifInterface;
    .restart local v2    # "exif":Landroid/media/ExifInterface;
    :cond_9
    :goto_9
    if-eqz v2, :cond_16

    .line 292
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 294
    .local v4, "orientation":I
    if-eq v4, v7, :cond_16

    .line 296
    packed-switch v4, :pswitch_data_2e

    .line 309
    .end local v4    # "orientation":I
    :cond_16
    :goto_16
    :pswitch_16
    return v0

    .line 288
    :catch_17
    move-exception v1

    .line 289
    .local v1, "ex":Ljava/io/IOException;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_9

    const-string v5, "ClipboardServiceEx"

    const-string v6, "cannot read exif"

    invoke-static {v5, v6, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 298
    .end local v1    # "ex":Ljava/io/IOException;
    .restart local v4    # "orientation":I
    :pswitch_24
    const/16 v0, 0x5a

    .line 299
    goto :goto_16

    .line 301
    :pswitch_27
    const/16 v0, 0xb4

    .line 302
    goto :goto_16

    .line 304
    :pswitch_2a
    const/16 v0, 0x10e

    goto :goto_16

    .line 296
    nop

    :pswitch_data_2e
    .packed-switch 0x3
        :pswitch_27
        :pswitch_16
        :pswitch_16
        :pswitch_24
        :pswitch_16
        :pswitch_2a
    .end packed-switch
.end method

.method public static getFilePathBitmap(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 9
    .param p0, "fileName"    # Ljava/lang/String;
    .param p1, "reqWidth"    # I
    .param p2, "reqHeight"    # I

    .prologue
    const/4 v4, 0x1

    .line 144
    const/4 v3, 0x2

    .line 145
    .local v3, "sampleSize":I
    const/4 v1, 0x0

    .line 147
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 150
    .local v0, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 153
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 158
    :try_start_c
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_f} :catch_1d

    move-result-object v1

    .line 166
    :goto_10
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v4, v3

    if-lt v4, p1, :cond_2b

    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v4, v3

    if-lt v4, p2, :cond_2b

    .line 168
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 159
    :catch_1d
    move-exception v2

    .line 161
    .local v2, "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_29

    const-string v4, "ClipboardServiceEx"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_29
    const/4 v4, 0x0

    .line 184
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2a
    return-object v4

    .line 170
    :cond_2b
    add-int/lit8 v3, v3, -0x1

    .line 172
    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 176
    const/4 v4, 0x0

    :try_start_30
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 177
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_35} :catch_38

    move-result-object v1

    :cond_36
    :goto_36
    move-object v4, v1

    .line 184
    goto :goto_2a

    .line 178
    :catch_38
    move-exception v2

    .line 180
    .restart local v2    # "e":Ljava/lang/Exception;
    sget-boolean v4, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v4, :cond_36

    const-string v4, "ClipboardServiceEx"

    const-string v5, "exception arised during bm = BitmapFactory.decodeFile(((ClipboardDataBitmap) cbData).GetBitmapPath());"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method

.method public static getUriPathBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;II)Landroid/graphics/Bitmap;
    .registers 12
    .param p0, "contentResolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 190
    const/4 v4, 0x2

    .line 191
    .local v4, "sampleSize":I
    const/4 v1, 0x0

    .line 193
    .local v1, "bm":Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 194
    .local v0, "bitmapOption":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 195
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 197
    if-nez p0, :cond_10

    .line 229
    :cond_f
    :goto_f
    return-object v5

    .line 202
    :cond_10
    :try_start_10
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_26

    move-result-object v1

    .line 209
    :goto_19
    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    div-int/2addr v5, v4

    if-lt v5, p2, :cond_33

    iget v5, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    div-int/2addr v5, v4

    if-lt v5, p3, :cond_33

    .line 210
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 203
    :catch_26
    move-exception v3

    .line 204
    .local v3, "e":Ljava/lang/Exception;
    sget-boolean v6, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v6, :cond_f

    const-string v6, "ClipboardServiceEx"

    const-string v7, "1. exception arised during bm = BitmapFactory.decodeStream(getContentResolver().openInputStream(uri), null, bitmapOption);"

    invoke-static {v6, v7}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    .line 212
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_33
    add-int/lit8 v4, v4, -0x1

    .line 214
    iput v4, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 217
    const/4 v5, 0x0

    :try_start_38
    iput-boolean v5, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 218
    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_42} :catch_4f

    move-result-object v1

    .line 224
    :cond_43
    :goto_43
    invoke-static {p0, p1}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->findImageDegree(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v2

    .line 225
    .local v2, "degree":I
    if-eqz v2, :cond_4d

    .line 226
    invoke-static {v1, v2}, Landroid/sec/clipboard/util/ClipboardDataBitmapUrl;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_4d
    move-object v5, v1

    .line 229
    goto :goto_f

    .line 219
    .end local v2    # "degree":I
    :catch_4f
    move-exception v3

    .line 220
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-boolean v5, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v5, :cond_43

    const-string v5, "ClipboardServiceEx"

    const-string v6, "2. exception arised during bm = BitmapFactory.decodeStream(getContentResolver().openInputStream(uri), null, bitmapOption);"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private static rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 11
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000

    .line 313
    if-eqz p1, :cond_31

    if-eqz p0, :cond_31

    .line 314
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 315
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 318
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 319
    .local v7, "converted":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_31

    .line 320
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_30
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1d .. :try_end_30} :catch_32

    .line 321
    move-object p0, v7

    .line 328
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "converted":Landroid/graphics/Bitmap;
    :cond_31
    :goto_31
    return-object p0

    .line 324
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_32
    move-exception v8

    .line 325
    .local v8, "ex":Ljava/lang/OutOfMemoryError;
    sget-boolean v0, Landroid/sec/clipboard/data/ClipboardDefine;->DEBUG:Z

    if-eqz v0, :cond_31

    const-string v0, "ClipboardServiceEx"

    const-string/jumbo v1, "out of memory"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31
.end method
